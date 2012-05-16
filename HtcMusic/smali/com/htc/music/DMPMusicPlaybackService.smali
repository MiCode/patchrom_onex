.class public Lcom/htc/music/DMPMusicPlaybackService;
.super Landroid/app/Service;
.source "DMPMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/DMPMusicPlaybackService$DmpUiPlaybackServiceStub;,
        Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;,
        Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;,
        Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;,
        Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.htc.music.DMPMusicPlaybackService"

.field public static final CMDFORCEPLAY:Ljava/lang/String; = "forcePlay"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDREFRESH_PLAYLIST:Ljava/lang/String; = "com.htc.music.refreshplaylist"

.field private static final DLNA_ERROR_HANDLE:I = 0x4

.field private static final ERROR_ALREADY_CONNECTED:I = -0x3e8

.field private static final ERROR_BUFFER_TOO_SMALL:I = -0x3f1

.field private static final ERROR_CANNOT_CONNECT:I = -0x3eb

.field private static final ERROR_CONNECTION_LOST:I = -0x3ed

.field private static final ERROR_END_OF_STREAM:I = -0x3f3

.field private static final ERROR_IO:I = -0x3ec

.field private static final ERROR_MALFORMED:I = -0x3ef

.field private static final ERROR_NOT_CONNECTED:I = -0x3e9

.field private static final ERROR_OUT_OF_RANGE:I = -0x3f0

.field private static final ERROR_UNKNOWN_HOST:I = -0x3ea

.field private static final ERROR_UNSUPPORTED:I = -0x3f2

.field public static final EXTRA_KEY_CONTAINER:Ljava/lang/String; = "container"

.field public static final EXTRA_KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final EXTRA_KEY_DIRECTION:Ljava/lang/String; = "direction"

.field public static final EXTRA_KEY_DMSFILEPATH:Ljava/lang/String; = "dmsFilePath"

.field public static final EXTRA_KEY_ENDIDX:Ljava/lang/String; = "endIdx"

.field public static final EXTRA_KEY_SERVER:Ljava/lang/String; = "server"

.field public static final EXTRA_KEY_STARTIDX:Ljava/lang/String; = "startIdx"

.field private static final IDLE_DELAY:I = 0xea60

.field private static MAX_ALBUM_ART_SIDE_LENGTH:I = 0x0

.field private static final MEDIA_ERROR_BASE:I = -0x3e8

.field private static final MEDIA_ERROR_STATE:I = -0x26

.field private static final MSG_ARG_NEXT_PREV_FORCE_CHANGE_SONG:I = 0x1f8b1

.field private static final NOTIFY_UPPER:I = 0x5

.field public static final PLAYBACKSERVICE_STATUS:I = 0x2

.field private static final PLUGIN_META_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.metachanged"

.field private static final PLUGIN_PLAYBACK_COMPLETE:Ljava/lang/String; = "com.htc.music.plugin.playbackcomplete"

.field private static final PLUGIN_PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.statechanged"

.field private static final PLUGIN_PLAY_NEXT:Ljava/lang/String; = "com.htc.music.plugin.playnext"

.field private static final PLUGIN_QUEUE_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.queuechanged"

.field private static final PREFIX_STRING_HTTP:Ljava/lang/String; = "http"

.field private static final PREFIX_STRING_IGNORE_PAUSE_SEEK:Ljava/lang/String; = "htc-dlna"

.field private static final RELEASE_WAKELOCK:I = 0x2

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field private static final SERVER_DIED:I = 0x3

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[DMPMusicPlaybackService]"

.field private static final TRACK_ENDED:I = 0x1


# instance fields
.field private final CV_CONTENT:Ljava/lang/String;

.field private final CV_POSITION:Ljava/lang/String;

.field private final CV_SERVER:Ljava/lang/String;

.field private final CV_SHUFFLE_MODE:Ljava/lang/String;

.field private final DLNA_CALLER_MUSIC:I

.field private final MAX_ERROR_RETRY_TIMES:I

.field private final MAX_SONGS_IN_PLAYLIST:I

.field private final MSG_CLEAR_ALBUMART_REQ_QUEUE:I

.field private final MSG_GET_NOW_PLAYING_QUEUE:I

.field private final MSG_HANDLE_ALBUMART:I

.field private final MSG_NEXT:I

.field private final MSG_PLAYER_ERROR_HANDLE:I

.field private final MSG_PREV:I

.field private final MSG_RELEASE_PLAYER_AND_QUIT:I

.field private final MSG_REQUEST_ALBUMART:I

.field private final MSG_SET_DATA_SOURCE:I

.field private final UPDATE_QUEUE_INTERVAL:I

.field private final hexdigits:[C

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

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mContainerID:Ljava/lang/String;

.field private mContentID:Ljava/lang/String;

.field private mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCols:[Ljava/lang/String;

.field private mDLNAConnection:Landroid/content/ServiceConnection;

.field private mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

.field private mDLNAPluginNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify;

.field private mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mDirection:I

.field private mDmsFilePath:Ljava/lang/String;

.field private mEndIdx:J

.field private mIdToContentIdTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAlbumArtGetting:Z

.field private mIsPlayPressed:Z

.field private mIsSupposedToBePlaying:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mMuteByTransientLossOfFocusCanDuck:Z

.field private volatile mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

.field private volatile mNonUILooper:Landroid/os/Looper;

.field private mNotify:Lcom/htc/music/IPluginIPCNotify;

.field private mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayList:[I

.field private mPlayListBak:[I

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

.field private mPlayerErrorCount:I

.field private mPreferences:Landroid/content/SharedPreferences;

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

.field private mRepeatMode:I

.field private mServerID:Ljava/lang/String;

.field private mServiceInUse:I

.field private mServiceStartId:I

.field private mShuffleMode:I

.field private mShuffleSeq:[I

.field private final mSortOrder:Ljava/lang/String;

.field private mStartIdx:J

.field private mTimePointToNextOrPre:J

.field private mTimePointToUpdateQueue:J

.field private final mUiBinder:Landroid/os/IBinder;

.field private mUriPath:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1178
    const/16 v0, 0x200

    sput v0, Lcom/htc/music/DMPMusicPlaybackService;->MAX_ALBUM_ART_SIDE_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    const/16 v0, 0x2710

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->UPDATE_QUEUE_INTERVAL:I

    .line 62
    const/16 v0, 0xc7

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MAX_SONGS_IN_PLAYLIST:I

    .line 86
    iput v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->DLNA_CALLER_MUSIC:I

    .line 94
    const-string v0, "server"

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->CV_SERVER:Ljava/lang/String;

    .line 95
    const-string v0, "content"

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->CV_CONTENT:Ljava/lang/String;

    .line 96
    const-string v0, "position"

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->CV_POSITION:Ljava/lang/String;

    .line 97
    const-string v0, "shuffle"

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->CV_SHUFFLE_MODE:Ljava/lang/String;

    .line 99
    const-string v0, "index_id COLLATE NOCASE ASC"

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mSortOrder:Ljava/lang/String;

    .line 128
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MAX_ERROR_RETRY_TIMES:I

    .line 129
    iput v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayerErrorCount:I

    .line 143
    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    .line 144
    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;-><init>(Lcom/htc/music/DMPMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 145
    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$DmpUiPlaybackServiceStub;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$DmpUiPlaybackServiceStub;-><init>(Lcom/htc/music/DMPMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mUiBinder:Landroid/os/IBinder;

    .line 147
    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    .line 148
    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    .line 149
    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    .line 151
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    .line 152
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIdToContentIdTable:Ljava/util/Hashtable;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    .line 155
    iput-boolean v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z

    .line 157
    iput v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    .line 158
    iput v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    .line 159
    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 161
    iput v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    .line 162
    iput v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mRepeatMode:I

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceStartId:I

    .line 166
    iput v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    .line 168
    iput-boolean v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 169
    iput-boolean v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsPlayPressed:Z

    .line 176
    new-instance v0, Lcom/htc/music/DMPContentItemDetails;

    invoke-direct {v0}, Lcom/htc/music/DMPContentItemDetails;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    .line 180
    iput-boolean v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 181
    iput-boolean v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    .line 183
    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$1;-><init>(Lcom/htc/music/DMPMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 239
    const/16 v0, 0x2af9

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MSG_PREV:I

    .line 240
    const/16 v0, 0x2afa

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MSG_NEXT:I

    .line 241
    const/16 v0, 0x2afb

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MSG_SET_DATA_SOURCE:I

    .line 242
    const/16 v0, 0x2afc

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MSG_REQUEST_ALBUMART:I

    .line 243
    const/16 v0, 0x2afd

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MSG_HANDLE_ALBUMART:I

    .line 244
    const/16 v0, 0x2afe

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MSG_CLEAR_ALBUMART_REQ_QUEUE:I

    .line 245
    const/16 v0, 0x2aff

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MSG_GET_NOW_PLAYING_QUEUE:I

    .line 246
    const/16 v0, 0x2b00

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MSG_PLAYER_ERROR_HANDLE:I

    .line 247
    const/16 v0, 0x2b01

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->MSG_RELEASE_PLAYER_AND_QUIT:I

    .line 249
    iput-wide v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToNextOrPre:J

    .line 250
    iput-wide v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToUpdateQueue:J

    .line 552
    iput-wide v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    .line 553
    iput-wide v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    .line 554
    iput v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDirection:I

    .line 555
    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    .line 556
    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    .line 559
    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    .line 561
    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDmsFilePath:Ljava/lang/String;

    .line 563
    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mUriPath:Ljava/lang/String;

    .line 566
    iput v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryPosition:I

    .line 567
    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;

    .line 571
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "content_id"

    aput-object v1, v0, v6

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

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursorCols:[Ljava/lang/String;

    .line 583
    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 588
    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$2;-><init>(Lcom/htc/music/DMPMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAConnection:Landroid/content/ServiceConnection;

    .line 633
    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$3;-><init>(Lcom/htc/music/DMPMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAPluginNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    .line 949
    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$4;-><init>(Lcom/htc/music/DMPMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 1179
    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    .line 1180
    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 1319
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->hexdigits:[C

    .line 1914
    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$5;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$5;-><init>(Lcom/htc/music/DMPMusicPlaybackService;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 3652
    return-void

    .line 1319
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

.method static synthetic access$000(Lcom/htc/music/DMPMusicPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/DMPMusicPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/music/DMPMusicPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/music/DMPMusicPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/music/DMPMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getAssetFileDescriptorFromPath(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->ensurePathExists(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->eraseAllFilesIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/music/DMPMusicPlaybackService;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/htc/music/DMPMusicPlaybackService;->saveAlbumArtToSDCard(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/music/DMPMusicPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->requestUpperDoNext(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/dlnainterface/IDLNAPluginNotify;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAPluginNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPContentItemDetails;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/music/DMPMusicPlaybackService;Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/music/DMPMusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->unBindDLNAService()V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/music/DMPMusicPlaybackService;Lcom/htc/music/DMPMusicPlaybackService$DMPState;)Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/htc/music/DMPMusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/music/DMPMusicPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->stop(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/music/DMPMusicPlaybackService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    return-wide v0
.end method

.method static synthetic access$2800(Lcom/htc/music/DMPMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDirection:I

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/music/DMPMusicPlaybackService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToUpdateQueue:J

    return-wide v0
.end method

.method static synthetic access$2902(Lcom/htc/music/DMPMusicPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToUpdateQueue:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/htc/music/DMPMusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->initErrorRetryHandle()V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/music/DMPMusicPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->reloadQueue(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3302(Lcom/htc/music/DMPMusicPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    return-wide p1
.end method

.method static synthetic access$3400(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/htc/music/DMPMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryPosition:I

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/music/DMPMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/music/DMPMusicPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/htc/music/DMPMusicPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/htc/music/DMPMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/DMPMusicPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->getDLNAErrorString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/music/DMPMusicPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsAlbumArtGetting:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/htc/music/DMPMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    return v0
.end method

.method static synthetic access$4200(Lcom/htc/music/DMPMusicPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->saveQueue(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/music/DMPMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$4400(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/music/DMPMusicPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsPlayPressed:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/htc/music/DMPMusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayerErrorCount:I

    return v0
.end method

.method static synthetic access$5208(Lcom/htc/music/DMPMusicPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayerErrorCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayerErrorCount:I

    return v0
.end method

.method static synthetic access$5300(Lcom/htc/music/DMPMusicPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->checkBeforeNextOrPre()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p10}, Lcom/htc/music/DMPMusicPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/music/DMPMusicPlaybackService;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    return-object v0
.end method

.method private addToPlayList([II)V
    .locals 7
    .parameter "list"
    .parameter "position"

    .prologue
    .line 2470
    array-length v0, p1

    .line 2471
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 2472
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    .line 2473
    const/4 p2, 0x0

    .line 2475
    :cond_0
    iget v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/htc/music/DMPMusicPlaybackService;->ensurePlayListCapacity(I)V

    .line 2476
    iget v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-le p2, v3, :cond_1

    .line 2477
    iget p2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    .line 2481
    :cond_1
    iget v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    sub-int v2, v3, p2

    .line 2482
    .local v2, tailsize:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    .line 2483
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    add-int v6, p2, v1

    sub-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 2482
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2487
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2488
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    add-int v4, p2, v1

    aget v5, p1, v1

    aput v5, v3, v4

    .line 2487
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2490
    :cond_3
    iget v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    .line 2492
    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addToPlayList()...mPlayListLen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2493
    return-void
.end method

.method private applyShuffleSeq([I)[I
    .locals 5
    .parameter "list"

    .prologue
    .line 1694
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    if-nez v2, :cond_2

    .line 1695
    :cond_0
    const-string v2, "[DMPMusicPlaybackService]"

    const-string v3, "applyShuffleSeq(), (list == null || mShuffleSeq == null)."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 1701
    .restart local p1
    :cond_2
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyShuffleSeq()...list.length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mShuffleSeq.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    array-length v2, p1

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    array-length v3, v3

    if-eq v2, v3, :cond_3

    .line 1705
    array-length v2, p1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/htc/music/DMPMusicPlaybackService;->setShuffleSeq(II)V

    .line 1708
    :cond_3
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    if-eqz v2, :cond_1

    .line 1711
    array-length v2, p1

    new-array v1, v2, [I

    .line 1712
    .local v1, rList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 1714
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    aget v2, v2, v0

    aget v2, p1, v2

    aput v2, v1, v0

    .line 1712
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object p1, v1

    .line 1720
    goto :goto_0
.end method

.method private bindDLNAService()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1282
    const-string v3, "[DMPMusicPlaybackService]"

    const-string v4, "bindDLNAService() ...."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/music/DMPMusicPlaybackService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1286
    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindDLNAService succeed. IDLNAPluginService.class.getName() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    :goto_0
    return v1

    .line 1289
    :cond_0
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v3, "bindDLNAService failed."

    invoke-static {v1, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    .line 1290
    goto :goto_0

    .line 1292
    :catch_0
    move-exception v0

    .line 1293
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 1294
    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindDLNAService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 1295
    goto :goto_0

    .line 1296
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 1297
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1298
    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindDLNAService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 1299
    goto :goto_0
.end method

.method private checkBeforeNextOrPre()Z
    .locals 7

    .prologue
    .line 1260
    const/4 v2, 0x0

    .line 1261
    .local v2, retval:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1262
    .local v0, currentTime:J
    iget-wide v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToNextOrPre:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 1263
    const/4 v2, 0x1

    .line 1268
    :cond_0
    :goto_0
    return v2

    .line 1264
    :cond_1
    iget-wide v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToNextOrPre:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 1265
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkFileExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 1100
    const/4 v1, 0x0

    .line 1102
    .local v1, retval:Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v0, albumArtFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1105
    const/4 v1, 0x1

    .line 1108
    :cond_0
    return v1
.end method

.method private ensurePathExists(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 1125
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1128
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1130
    :cond_0
    return-void
.end method

.method private ensurePlayListBakCapacity(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 2429
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    array-length v1, v1

    if-le p1, v1, :cond_1

    .line 2430
    :cond_0
    new-array v0, p1, [I

    .line 2431
    .local v0, newlist:[I
    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    .line 2435
    .end local v0           #newlist:[I
    :cond_1
    return-void
.end method

.method private ensurePlayListCapacity(I)V
    .locals 4
    .parameter "size"

    .prologue
    .line 2410
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    array-length v3, v3

    if-le p1, v3, :cond_2

    .line 2415
    :cond_0
    new-array v2, p1, [I

    .line 2416
    .local v2, newlist:[I
    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    .line 2417
    .local v1, len:I
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    if-eqz v3, :cond_1

    .line 2418
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2419
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 2418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2422
    .end local v0           #i:I
    :cond_1
    iput-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    .line 2426
    .end local v1           #len:I
    .end local v2           #newlist:[I
    :cond_2
    return-void
.end method

.method private eraseAllFilesIfNeeded(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 1134
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1135
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1136
    .local v1, fileArray:[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v3, v1

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_0

    .line 1137
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 1138
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 1139
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1141
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private getAssetFileDescriptorFromPath(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "filePath"

    .prologue
    .line 1067
    const/4 v1, 0x0

    .line 1070
    .local v1, cpClient:Landroid/content/ContentProviderClient;
    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://dlna/images"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1072
    const-string v4, "[DMPMusicPlaybackService]"

    const-string v5, "$$ albumArtDownloadedNotify: No provider client: cpClient..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const/4 v0, 0x0

    .line 1096
    :goto_0
    return-object v0

    .line 1076
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

    .line 1078
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1080
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v4, "r"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1081
    const-string v4, "[DMPMusicPlaybackService]"

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

    .line 1093
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 1094
    const/4 v1, 0x0

    .line 1096
    goto :goto_0

    .line 1083
    :cond_1
    :try_start_1
    const-string v4, "[DMPMusicPlaybackService]"

    const-string v5, "getAssetFileDescriptorFromPath: afDescriptor is null..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1084
    :catch_0
    move-exception v2

    .line 1085
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "[DMPMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssetFileDescriptorFromPath: RemoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1087
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1089
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v4, "[DMPMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssetFileDescriptorFromPath: FileNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private getContentIDFromID(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 3387
    const/4 v0, 0x0

    .line 3389
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIdToContentIdTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #retval:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 3393
    .restart local v0       #retval:Ljava/lang/String;
    return-object v0
.end method

.method private getDLNAErrorString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1044
    const/4 v0, 0x0

    .line 1046
    .local v0, errorCause:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    sget-object v2, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->READY:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    if-ne v1, v2, :cond_0

    .line 1047
    const/4 v1, 0x0

    .line 1063
    :goto_0
    return-object v1

    .line 1049
    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1050
    sget-object v1, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->SERVER_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    iput-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    .line 1054
    :goto_1
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    sget-object v2, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    if-ne v1, v2, :cond_3

    .line 1055
    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1061
    :cond_1
    :goto_2
    const-string v1, "[DMPMusicPlaybackService]"

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

    move-object v1, v0

    .line 1063
    goto :goto_0

    .line 1052
    :cond_2
    sget-object v1, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    iput-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    goto :goto_1

    .line 1057
    :cond_3
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    sget-object v2, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->SERVER_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    if-ne v1, v2, :cond_1

    .line 1058
    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private getDmpAlbumArtDirPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1112
    const/4 v0, 0x0

    .line 1113
    .local v0, retval:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/music/DMPMusicPlaybackService;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1115
    .local v1, vSDcard:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 1116
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

    .line 1120
    :goto_0
    return-object v0

    .line 1118
    :cond_0
    const-string v2, "[DMPMusicPlaybackService]"

    const-string v3, "getDmpAlbumArtDirPath()...vSDcard is null and return path as null..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private gotoIdleState()V
    .locals 5

    .prologue
    .line 2438
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2439
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2440
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2442
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 2443
    .local v1, status:Landroid/app/Notification;
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/DMPMusicPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 2444
    return-void
.end method

.method private initErrorRetryHandle()V
    .locals 2

    .prologue
    .line 1272
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayerErrorCount:I

    .line 1274
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1275
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1277
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    const/16 v1, 0x2b00

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->removeMessages(I)V

    .line 1278
    return-void
.end method

.method private openCurrent()V
    .locals 12

    .prologue
    .line 2336
    monitor-enter p0

    .line 2338
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2339
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 2343
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    .line 2344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    .line 2345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    .line 2347
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_1

    .line 2348
    monitor-exit p0

    .line 2407
    :goto_0
    return-void

    .line 2351
    :cond_1
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-lt v0, v1, :cond_3

    .line 2352
    :cond_2
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad! we can\'t open mPlayPos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPlayListLen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    monitor-exit p0

    goto :goto_0

    .line 2406
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2358
    :cond_3
    :try_start_1
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCurrent()...mPlayPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 2362
    .local v8, id:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "file_type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "index_id COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 2365
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 2366
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2367
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v1, "uri_path"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2370
    .local v9, index:I
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2371
    .local v11, uriPath:Ljava/lang/String;
    iput-object v11, p0, Lcom/htc/music/DMPMusicPlaybackService;->mUriPath:Ljava/lang/String;

    .line 2372
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    const/16 v1, 0x2afb

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->removeMessages(I)V

    .line 2373
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    const/16 v1, 0x2afb

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 2374
    .local v10, msg:Landroid/os/Message;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2375
    .local v6, data:Landroid/os/Bundle;
    const-string v0, "uriPath"

    invoke-virtual {v6, v0, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    invoke-virtual {v10, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2377
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    invoke-virtual {v0, v10}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2379
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v1, "content_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2380
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    .line 2382
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v1, "serve_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2383
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    .line 2385
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v1, "container"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2386
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    .line 2389
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCurrent()...mServerID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mContentID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDLNAService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 2394
    :try_start_2
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###openCurrent()...mDLNAPluginNotify = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAPluginNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    invoke-virtual {v0}, Lcom/htc/music/DMPContentItemDetails;->reset()V

    .line 2397
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V

    .line 2399
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->saveQueue(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2406
    .end local v6           #data:Landroid/os/Bundle;
    .end local v9           #index:I
    .end local v10           #msg:Landroid/os/Message;
    .end local v11           #uriPath:Ljava/lang/String;
    :cond_4
    :goto_1
    :try_start_3
    monitor-exit p0

    goto/16 :goto_0

    .line 2401
    .restart local v6       #data:Landroid/os/Bundle;
    .restart local v9       #index:I
    .restart local v10       #msg:Landroid/os/Message;
    .restart local v11       #uriPath:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 2402
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private pluginNotifyChange(Ljava/lang/String;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 2448
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2449
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2450
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "notify"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2451
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2452
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2453
    return-void
.end method

.method private reloadQueue(Z)V
    .locals 31
    .parameter "fromDmsOrIntent"

    .prologue
    .line 1407
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### reloadQueue...Begin, fromDmsOrIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/DMPMusicPlaybackService;->initErrorRetryHandle()V

    .line 1411
    if-nez p1, :cond_16

    .line 1413
    const/16 v22, 0x0

    .line 1414
    .local v22, q:Ljava/lang/String;
    const-string v13, ""

    .line 1416
    .local v13, emptyStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "content"

    invoke-interface {v2, v3, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    .line 1417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "server"

    invoke-interface {v2, v3, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    .line 1418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "container"

    invoke-interface {v2, v3, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    .line 1420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "startIdx"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    .line 1421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "endIdx"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    .line 1422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "direction"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mDirection:I

    .line 1424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "filepath"

    invoke-interface {v2, v3, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mDmsFilePath:Ljava/lang/String;

    .line 1426
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startIdx => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endIdx => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mServerID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContainerID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContentID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    .line 1433
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 1434
    .local v11, done:Z
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadQueue, From Preference, query done? => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    .end local v11           #done:Z
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queue"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1442
    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v23

    .line 1443
    .local v23, qlen:I
    :goto_1
    if-eqz v22, :cond_15

    const/4 v2, 0x1

    move/from16 v0, v23

    if-le v0, v2, :cond_15

    .line 1444
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMP reload queue, loaded queue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    const-string v2, ";"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1446
    .local v14, entries:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v19, v0

    .line 1447
    .local v19, len:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->ensurePlayListCapacity(I)V

    .line 1448
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move/from16 v0, v19

    if-ge v15, v0, :cond_5

    .line 1449
    aget-object v25, v14, v15

    .line 1450
    .local v25, revhex:Ljava/lang/String;
    const/16 v20, 0x0

    .line 1451
    .local v20, n:I
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v18, v2, -0x1

    .local v18, j:I
    :goto_3
    if-ltz v18, :cond_4

    .line 1452
    shl-int/lit8 v20, v20, 0x4

    .line 1453
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1454
    .local v8, c:C
    const/16 v2, 0x30

    if-lt v8, v2, :cond_2

    const/16 v2, 0x39

    if-gt v8, v2, :cond_2

    .line 1455
    add-int/lit8 v2, v8, -0x30

    add-int v20, v20, v2

    .line 1451
    :goto_4
    add-int/lit8 v18, v18, -0x1

    goto :goto_3

    .line 1435
    .end local v8           #c:C
    .end local v14           #entries:[Ljava/lang/String;
    .end local v15           #i:I
    .end local v18           #j:I
    .end local v19           #len:I
    .end local v20           #n:I
    .end local v23           #qlen:I
    .end local v25           #revhex:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1436
    .local v12, e:Landroid/os/RemoteException;
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadQueue, From Preference, RemoteException, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1442
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_1
    const/16 v23, 0x0

    goto :goto_1

    .line 1456
    .restart local v8       #c:C
    .restart local v14       #entries:[Ljava/lang/String;
    .restart local v15       #i:I
    .restart local v18       #j:I
    .restart local v19       #len:I
    .restart local v20       #n:I
    .restart local v23       #qlen:I
    .restart local v25       #revhex:Ljava/lang/String;
    :cond_2
    const/16 v2, 0x61

    if-lt v8, v2, :cond_3

    const/16 v2, 0x66

    if-gt v8, v2, :cond_3

    .line 1457
    add-int/lit8 v2, v8, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int v20, v20, v2

    goto :goto_4

    .line 1460
    :cond_3
    const/16 v19, 0x0

    .line 1464
    .end local v8           #c:C
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aput v20, v2, v15

    .line 1448
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1466
    .end local v18           #j:I
    .end local v20           #n:I
    .end local v25           #revhex:Ljava/lang/String;
    :cond_5
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    .line 1467
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMP reload queue, len: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "queuebak"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1470
    if-eqz v22, :cond_9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_9

    .line 1471
    const-string v2, ";"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1472
    array-length v0, v14

    move/from16 v19, v0

    .line 1473
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->ensurePlayListBakCapacity(I)V

    .line 1474
    const/4 v15, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v15, v0, :cond_9

    .line 1475
    aget-object v25, v14, v15

    .line 1476
    .restart local v25       #revhex:Ljava/lang/String;
    const/16 v20, 0x0

    .line 1477
    .restart local v20       #n:I
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v18, v2, -0x1

    .restart local v18       #j:I
    :goto_6
    if-ltz v18, :cond_8

    .line 1478
    shl-int/lit8 v20, v20, 0x4

    .line 1479
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1480
    .restart local v8       #c:C
    const/16 v2, 0x30

    if-lt v8, v2, :cond_6

    const/16 v2, 0x39

    if-gt v8, v2, :cond_6

    .line 1481
    add-int/lit8 v2, v8, -0x30

    add-int v20, v20, v2

    .line 1477
    :goto_7
    add-int/lit8 v18, v18, -0x1

    goto :goto_6

    .line 1482
    :cond_6
    const/16 v2, 0x61

    if-lt v8, v2, :cond_7

    const/16 v2, 0x66

    if-gt v8, v2, :cond_7

    .line 1483
    add-int/lit8 v2, v8, 0xa

    add-int/lit8 v2, v2, -0x61

    add-int v20, v20, v2

    goto :goto_7

    .line 1486
    :cond_7
    const/16 v19, 0x0

    .line 1490
    .end local v8           #c:C
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    aput v20, v2, v15

    .line 1474
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 1495
    .end local v18           #j:I
    .end local v20           #n:I
    .end local v25           #revhex:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "curpos"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 1496
    .local v21, pos:I
    if-ltz v21, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    move/from16 v0, v21

    if-lt v0, v2, :cond_c

    .line 1498
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    .line 1664
    .end local v13           #emptyStr:Ljava/lang/String;
    .end local v14           #entries:[Ljava/lang/String;
    .end local v15           #i:I
    .end local v19           #len:I
    .end local v21           #pos:I
    .end local v22           #q:Ljava/lang/String;
    .end local v23           #qlen:I
    :cond_b
    :goto_8
    return-void

    .line 1501
    .restart local v13       #emptyStr:Ljava/lang/String;
    .restart local v14       #entries:[Ljava/lang/String;
    .restart local v15       #i:I
    .restart local v19       #len:I
    .restart local v21       #pos:I
    .restart local v22       #q:Ljava/lang/String;
    .restart local v23       #qlen:I
    :cond_c
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    .line 1503
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMP reload queue, mPlayPos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 1506
    .local v30, where:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serve_id= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "container"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    const-string v2, " AND _id IN ("

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    const/4 v15, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-ge v15, v2, :cond_e

    .line 1510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v2, v2, v15

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1511
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    add-int/lit8 v2, v2, -0x1

    if-ge v15, v2, :cond_d

    .line 1512
    const-string v2, ","

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 1515
    :cond_e
    const-string v2, ")"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "content_id"

    aput-object v5, v4, v2

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "index_id COLLATE NOCASE ASC"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 1520
    .local v29, tmpCursor:Landroid/database/Cursor;
    if-eqz v29, :cond_f

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_10

    .line 1521
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    .line 1522
    if-eqz v29, :cond_b

    .line 1523
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 1524
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 1529
    :cond_10
    if-eqz v29, :cond_12

    .line 1531
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "## ReloadQueue from preference...tmpCursor.getCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPlayListLen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    const-string v2, "_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1533
    .local v16, idIdx:I
    const-string v2, "content_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1535
    .local v9, contentIDIdx:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mIdToContentIdTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 1536
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1537
    const/4 v15, 0x0

    :goto_a
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v15, v2, :cond_11

    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mIdToContentIdTable:Ljava/util/Hashtable;

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    .line 1537
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 1542
    :cond_11
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 1543
    const/16 v29, 0x0

    .line 1546
    .end local v9           #contentIDIdx:I
    .end local v16           #idIdx:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "repeatmode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 1547
    .local v24, repmode:I
    const/4 v2, 0x2

    move/from16 v0, v24

    if-eq v0, v2, :cond_13

    const/4 v2, 0x1

    move/from16 v0, v24

    if-eq v0, v2, :cond_13

    .line 1548
    const/16 v24, 0x0

    .line 1550
    :cond_13
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/DMPMusicPlaybackService;->mRepeatMode:I

    .line 1552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflemode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 1553
    .local v26, shufmode:I
    const/4 v2, 0x1

    move/from16 v0, v26

    if-eq v0, v2, :cond_14

    .line 1554
    const/16 v26, 0x0

    .line 1556
    :cond_14
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    .line 1663
    .end local v13           #emptyStr:Ljava/lang/String;
    .end local v14           #entries:[Ljava/lang/String;
    .end local v15           #i:I
    .end local v19           #len:I
    .end local v21           #pos:I
    .end local v22           #q:Ljava/lang/String;
    .end local v23           #qlen:I
    .end local v24           #repmode:I
    .end local v26           #shufmode:I
    .end local v29           #tmpCursor:Landroid/database/Cursor;
    .end local v30           #where:Ljava/lang/StringBuilder;
    :goto_b
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### reloadQueue...End, mPlayListLen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1559
    .restart local v13       #emptyStr:Ljava/lang/String;
    .restart local v22       #q:Ljava/lang/String;
    .restart local v23       #qlen:I
    :cond_15
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "q: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", qlen => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1565
    .end local v13           #emptyStr:Ljava/lang/String;
    .end local v22           #q:Ljava/lang/String;
    .end local v23           #qlen:I
    :cond_16
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startIdx => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endIdx => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mServerID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContainerID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContentID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_17

    .line 1572
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 1573
    .restart local v11       #done:Z
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadQueue, From DMS, query done? => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1579
    .end local v11           #done:Z
    :cond_17
    :goto_c
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 1580
    .restart local v30       #where:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serve_id= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "container"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mDirection:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    .line 1583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND index_id <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_18

    .line 1585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND index_id >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    :cond_18
    :goto_d
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mCursorCols:[Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "index_id COLLATE NOCASE ASC"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 1599
    .restart local v29       #tmpCursor:Landroid/database/Cursor;
    if-eqz v29, :cond_21

    .line 1601
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1603
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    .line 1604
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    .line 1606
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/16 v3, 0xc7

    if-le v2, v3, :cond_1b

    const/16 v2, 0xc7

    :goto_e
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    .line 1608
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadQueue... mPlayListLen => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tmpCursor.getCount() => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/DMPMusicPlaybackService;->ensurePlayListCapacity(I)V

    .line 1612
    const-string v2, "_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1613
    .local v17, idIndex:I
    const-string v2, "content_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1614
    .local v10, contentIDIndex:I
    const/16 v27, 0x0

    .line 1615
    .local v27, tempContentID:Ljava/lang/String;
    const/16 v28, -0x1

    .line 1617
    .local v28, tempID:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mIdToContentIdTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 1619
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-ge v15, v2, :cond_1c

    .line 1621
    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 1622
    move-object/from16 v0, v29

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aput v28, v2, v15

    .line 1625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mIdToContentIdTable:Ljava/util/Hashtable;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1627
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    .line 1629
    :cond_19
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    .line 1619
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 1574
    .end local v10           #contentIDIndex:I
    .end local v15           #i:I
    .end local v17           #idIndex:I
    .end local v27           #tempContentID:Ljava/lang/String;
    .end local v28           #tempID:I
    .end local v29           #tmpCursor:Landroid/database/Cursor;
    .end local v30           #where:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v12

    .line 1575
    .restart local v12       #e:Landroid/os/RemoteException;
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadQueue, From DMS, RemoteException, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1588
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v30       #where:Ljava/lang/StringBuilder;
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND index_id >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_18

    .line 1590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND index_id <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 1606
    .restart local v29       #tmpCursor:Landroid/database/Cursor;
    :cond_1b
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto/16 :goto_e

    .line 1631
    .restart local v10       #contentIDIndex:I
    .restart local v15       #i:I
    .restart local v17       #idIndex:I
    .restart local v27       #tempContentID:Ljava/lang/String;
    .restart local v28       #tempID:I
    :cond_1c
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initialization...mPlayPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 1634
    const/16 v29, 0x0

    .line 1636
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    if-nez v2, :cond_1e

    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflemode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 1638
    .restart local v26       #shufmode:I
    const/4 v2, 0x1

    move/from16 v0, v26

    if-eq v0, v2, :cond_1d

    .line 1639
    const/16 v26, 0x0

    .line 1641
    :cond_1d
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    .line 1645
    .end local v26           #shufmode:I
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 1646
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/DMPMusicPlaybackService;->ensurePlayListBakCapacity(I)V

    .line 1647
    const/4 v15, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-ge v15, v2, :cond_1f

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v3, v3, v15

    aput v3, v2, v15

    .line 1647
    add-int/lit8 v15, v15, 0x1

    goto :goto_10

    .line 1650
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/music/DMPMusicPlaybackService;->setShuffleSeq(II)V

    .line 1651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/DMPMusicPlaybackService;->applyShuffleSeq([I)[I

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/DMPMusicPlaybackService;->setPlaylist([I)V

    .line 1654
    :cond_20
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/DMPMusicPlaybackService;->saveQueue(Z)V

    .line 1661
    .end local v10           #contentIDIndex:I
    .end local v15           #i:I
    .end local v17           #idIndex:I
    .end local v27           #tempContentID:Ljava/lang/String;
    .end local v28           #tempID:I
    :goto_11
    const-string v2, "com.htc.music.plugin.queuechanged"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1658
    :cond_21
    const-string v2, "[DMPMusicPlaybackService]"

    const-string v3, "cursor is null..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method private requestUpperDoNext(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 2456
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 2458
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mRepeatMode:I

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 2460
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/DMPMusicPlaybackService;->next(ZZ)V

    .line 2466
    :goto_0
    return-void

    .line 2465
    :cond_0
    const-string v0, "com.htc.music.plugin.playnext"

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resizeThumb(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "afd"

    .prologue
    .line 1184
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    .line 1185
    :cond_0
    const/4 v3, 0x0

    .line 1256
    :cond_1
    :goto_0
    return-object v3

    .line 1188
    :cond_2
    iget-object v9, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    if-nez v9, :cond_3

    .line 1189
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v9, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    .line 1191
    :cond_3
    iget-object v9, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    if-nez v9, :cond_4

    .line 1192
    new-instance v9, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-direct {v9, v10, v11}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v9, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 1196
    :cond_4
    :try_start_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1197
    .local v6, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1198
    const/4 v9, 0x1

    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1199
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1204
    :goto_1
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    sget v10, Lcom/htc/music/DMPMusicPlaybackService;->MAX_ALBUM_ART_SIDE_LENGTH:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/high16 v10, 0x4000

    cmpl-float v9, v9, v10

    if-gez v9, :cond_5

    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v9, v9

    sget v10, Lcom/htc/music/DMPMusicPlaybackService;->MAX_ALBUM_ART_SIDE_LENGTH:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/high16 v10, 0x4000

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_6

    .line 1205
    :cond_5
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1206
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1207
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1251
    .end local v6           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v5

    .line 1253
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "[DMPMusicPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resizeThumb(), thumbnail resize failed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const/4 v3, 0x0

    goto :goto_0

    .line 1210
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v6       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_6
    :try_start_1
    const-string v9, "[DMPMusicPlaybackService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resizeThumb(), thumbnail 1st resize width "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", height "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    const/4 v9, 0x0

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1214
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v9, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1215
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1217
    .local v2, bitmapOrg:Landroid/graphics/Bitmap;
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v10, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v9, v10, :cond_7

    iget v1, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1218
    .local v1, biggerSizeLength:I
    :goto_2
    sget v9, Lcom/htc/music/DMPMusicPlaybackService;->MAX_ALBUM_ART_SIDE_LENGTH:I

    if-le v1, v9, :cond_8

    sget v0, Lcom/htc/music/DMPMusicPlaybackService;->MAX_ALBUM_ART_SIDE_LENGTH:I

    .line 1220
    .local v0, albumArtSize:I
    :goto_3
    int-to-float v9, v0

    int-to-float v10, v1

    div-float v7, v9, v10

    .line 1222
    .local v7, scale:F
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1223
    .local v8, squareAlbum:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1225
    .local v4, canvas:Landroid/graphics/Canvas;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1226
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1227
    iget-object v9, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 1229
    iget-object v9, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1230
    iget-object v9, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v10, v0

    iget v11, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v11, v11

    mul-float/2addr v11, v7

    sub-float/2addr v10, v11

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    int-to-float v11, v0

    iget v12, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v12, v12

    mul-float/2addr v12, v7

    sub-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1234
    iget-object v9, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPaintDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v4, v9}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1235
    iget-object v9, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMatrix:Landroid/graphics/Matrix;

    const/4 v10, 0x0

    invoke-virtual {v4, v2, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1236
    invoke-virtual {v4, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1240
    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1243
    .local v3, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1244
    const/4 v6, 0x0

    .line 1246
    if-eqz v8, :cond_1

    .line 1247
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 1248
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1217
    .end local v0           #albumArtSize:I
    .end local v1           #biggerSizeLength:I
    .end local v3           #bm:Landroid/graphics/Bitmap;
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v7           #scale:F
    .end local v8           #squareAlbum:Landroid/graphics/Bitmap;
    :cond_7
    iget v1, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .restart local v1       #biggerSizeLength:I
    :cond_8
    move v0, v1

    .line 1218
    goto :goto_3
.end method

.method private saveAlbumArtToSDCard(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Z
    .locals 8
    .parameter "afd"
    .parameter "filepath"

    .prologue
    .line 1144
    const/4 v3, 0x0

    .line 1146
    .local v3, retval:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1147
    :cond_0
    const/4 v4, 0x0

    .line 1174
    :goto_0
    return v4

    .line 1150
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->resizeThumb(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1153
    .local v2, newAlbumArt:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v1, fos:Ljava/io/FileOutputStream;
    if-eqz v2, :cond_3

    .line 1155
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1159
    :goto_1
    if-eqz v1, :cond_4

    .line 1160
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1161
    const/4 v3, 0x1

    .line 1171
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v2, :cond_2

    .line 1172
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move v4, v3

    .line 1174
    goto :goto_0

    .line 1157
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_1
    const-string v4, "[DMPMusicPlaybackService]"

    const-string v5, "saveAlbumArtToSDCard(), newAlbumArt is null..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1165
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 1166
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 1164
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_4
    :try_start_2
    const-string v4, "[DMPMusicPlaybackService]"

    const-string v5, "saveAlbumArtToSDCard()..fos is null..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1167
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 1168
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private saveQueue(Z)V
    .locals 12
    .parameter "full"

    .prologue
    const-wide/16 v10, 0x0

    .line 1327
    const-string v7, "[DMPMusicPlaybackService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveQueue, full = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1329
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_7

    .line 1330
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1331
    .local v6, q:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 1333
    .local v3, len:I
    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    if-eqz v7, :cond_3

    .line 1340
    iget v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    .line 1341
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1342
    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v7, v7, v2

    int-to-long v4, v7

    .line 1343
    .local v4, n:J
    cmp-long v7, v4, v10

    if-nez v7, :cond_0

    .line 1344
    const-string v7, "0;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1346
    :cond_0
    :goto_2
    cmp-long v7, v4, v10

    if-eqz v7, :cond_1

    .line 1347
    const-wide/16 v7, 0xf

    and-long/2addr v7, v4

    long-to-int v0, v7

    .line 1348
    .local v0, digit:I
    const/4 v7, 0x4

    shr-long/2addr v4, v7

    .line 1349
    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->hexdigits:[C

    aget-char v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1351
    .end local v0           #digit:I
    :cond_1
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1355
    .end local v4           #n:J
    :cond_2
    const-string v7, "queue"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1363
    .end local v2           #i:I
    :goto_3
    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    if-eqz v7, :cond_8

    .line 1364
    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1366
    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    array-length v3, v7

    .line 1367
    const-string v7, "[DMPMusicPlaybackService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveQueue mPlayListBak.length : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v3, :cond_6

    .line 1369
    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    aget v4, v7, v2

    .line 1370
    .local v4, n:I
    if-nez v4, :cond_4

    .line 1371
    const-string v7, "0;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1359
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_3
    const-string v7, "queue"

    const-string v8, ""

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 1373
    .restart local v2       #i:I
    .restart local v4       #n:I
    :cond_4
    :goto_6
    if-eqz v4, :cond_5

    .line 1374
    and-int/lit8 v0, v4, 0xf

    .line 1375
    .restart local v0       #digit:I
    shr-int/lit8 v4, v4, 0x4

    .line 1376
    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService;->hexdigits:[C

    aget-char v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1378
    .end local v0           #digit:I
    :cond_5
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1381
    .end local v4           #n:I
    :cond_6
    const-string v7, "queuebak"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1387
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v6           #q:Ljava/lang/StringBuilder;
    :cond_7
    :goto_7
    const-string v7, "curpos"

    iget v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1389
    const-string v7, "server"

    iget-object v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1390
    const-string v7, "container"

    iget-object v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1391
    const-string v7, "curContentId"

    iget-object v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1392
    const-string v7, "content"

    const-string v8, ""

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1393
    const-string v7, "repeatmode"

    iget v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mRepeatMode:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1394
    const-string v7, "shufflemode"

    iget v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1396
    const-string v7, "startIdx"

    iget-wide v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1397
    const-string v7, "endIdx"

    iget-wide v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1398
    const-string v7, "direction"

    iget v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDirection:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1400
    const-string v7, "filepath"

    iget-object v8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDmsFilePath:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1402
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1404
    return-void

    .line 1384
    .restart local v3       #len:I
    .restart local v6       #q:Ljava/lang/StringBuilder;
    :cond_8
    const-string v7, "queuebak"

    const-string v8, ""

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_7
.end method

.method private setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V
    .locals 1
    .parameter "serverId"
    .parameter "containerId"
    .parameter "contentId"
    .parameter "startIdx"
    .parameter "endIdx"
    .parameter "dir"
    .parameter "shuffleMode"
    .parameter "filePath"

    .prologue
    .line 3397
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->cleanUp()V

    .line 3399
    iput-object p3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    .line 3400
    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    .line 3401
    iput-object p2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    .line 3402
    iput-wide p4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    .line 3403
    iput-wide p6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    .line 3404
    iput p8, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDirection:I

    .line 3405
    iput p9, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    .line 3406
    iput-object p10, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDmsFilePath:Ljava/lang/String;

    .line 3408
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->reloadQueue(Z)V

    .line 3409
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V

    .line 3410
    return-void
.end method

.method private setShuffleSeq(II)V
    .locals 7
    .parameter "len"
    .parameter "nFirst"

    .prologue
    .line 1668
    const-string v4, "[DMPMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setShuffleSeq()... len = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nFirst = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    if-nez p1, :cond_1

    .line 1671
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    .line 1689
    :cond_0
    return-void

    .line 1674
    :cond_1
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    .line 1675
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 1676
    .local v2, rnd:Ljava/util/Random;
    move v1, p2

    .line 1678
    .local v1, r:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 1679
    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    aput v0, v4, v0

    .line 1678
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1681
    :cond_2
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v4, p1, -0x1

    if-ge v0, v4, :cond_0

    .line 1683
    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    aget v3, v4, v0

    .line 1684
    .local v3, temp:I
    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    aget v5, v5, v1

    aput v5, v4, v0

    .line 1685
    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleSeq:[I

    aput v3, v4, v1

    .line 1686
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x1

    sub-int v5, p1, v5

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int v1, v4, v5

    .line 1681
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private stop(Z)V
    .locals 3
    .parameter "stateChanged"

    .prologue
    const/4 v2, 0x0

    .line 2565
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2566
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "stop()...call mPlayer.stop();..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->stop()V

    .line 2570
    :cond_0
    if-eqz p1, :cond_1

    .line 2571
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->gotoIdleState()V

    .line 2575
    :cond_1
    if-eqz p1, :cond_2

    .line 2576
    iput-boolean v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 2577
    iput-boolean v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsPlayPressed:Z

    .line 2578
    const-string v0, "com.htc.music.plugin.statechanged"

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 2580
    :cond_2
    return-void
.end method

.method private unBindDLNAService()V
    .locals 4

    .prologue
    .line 1305
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "unBindDLNAService() ...."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 1309
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAPluginNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1313
    :goto_0
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1315
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 1317
    :cond_0
    return-void

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
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
    .line 2992
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "clearAlbumArtRequests()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2993
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    const/16 v1, 0x2afe

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    .line 2994
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
    .line 2998
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "clearNowplayingQueueRequests()...do nothing..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3000
    return-void
.end method

.method public duration()J
    .locals 4

    .prologue
    .line 2714
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-wide v0, v0, Lcom/htc/music/DMPContentItemDetails;->contentDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-wide v0, v0, Lcom/htc/music/DMPContentItemDetails;->contentDuration:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getAlbumArtByIndex(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "index"

    .prologue
    .line 2917
    const-string v0, "[DMPMusicPlaybackService]"

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

    .line 2918
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlbumArtPath()V
    .locals 0

    .prologue
    .line 2914
    return-void
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 16
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3003
    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()... position => "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3004
    const/4 v11, 0x0

    .line 3005
    .local v11, retval:Ljava/lang/String;
    const/4 v1, 0x0

    .line 3008
    .local v1, contentID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 3009
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    if-nez v13, :cond_0

    .line 3010
    const-string v13, "[DMPMusicPlaybackService]"

    const-string v14, "getAlbumArtPathByPosition()...mPlayListBak is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3011
    const/4 v13, 0x0

    .line 3118
    :goto_0
    return-object v13

    .line 3014
    :cond_0
    if-ltz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    array-length v13, v13

    move/from16 v0, p1

    if-ge v0, v13, :cond_1

    .line 3015
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    aget v13, v13, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/music/DMPMusicPlaybackService;->getContentIDFromID(I)Ljava/lang/String;

    move-result-object v1

    .line 3036
    :goto_1
    if-nez v1, :cond_5

    .line 3037
    const-string v13, "[DMPMusicPlaybackService]"

    const-string v14, "getAlbumArtPathByPosition()...contentID is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3038
    const/4 v13, 0x0

    goto :goto_0

    .line 3018
    :cond_1
    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...index out of boundary => position = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mPlayListBak.length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    array-length v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    const/4 v13, 0x0

    goto :goto_0

    .line 3022
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    if-nez v13, :cond_3

    .line 3023
    const-string v13, "[DMPMusicPlaybackService]"

    const-string v14, "getAlbumArtPathByPosition()...mPlayList is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3024
    const/4 v13, 0x0

    goto :goto_0

    .line 3027
    :cond_3
    if-ltz p1, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    array-length v13, v13

    move/from16 v0, p1

    if-ge v0, v13, :cond_4

    .line 3028
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v13, v13, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/music/DMPMusicPlaybackService;->getContentIDFromID(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3031
    :cond_4
    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByPosition()...index out of boundary => position = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mPlayList.length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    array-length v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3032
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3042
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    .line 3043
    .local v12, status:Ljava/lang/String;
    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 3044
    const-string v13, "[DMPMusicPlaybackService]"

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

    .line 3045
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3050
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    if-eqz v13, :cond_9

    .line 3051
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 3052
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3063
    :cond_7
    :goto_2
    if-eqz v11, :cond_9

    move-object v13, v11

    .line 3064
    goto/16 :goto_0

    .line 3054
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 3055
    .local v7, fileName:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3057
    .local v8, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/music/DMPMusicPlaybackService;->checkFileExist(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 3058
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3059
    move-object v11, v8

    goto :goto_2

    .line 3068
    .end local v7           #fileName:Ljava/lang/String;
    .end local v8           #filePath:Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    .line 3069
    .local v6, duplicatedRequest:Z
    const/4 v2, 0x0

    .line 3070
    .local v2, curCV:Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 3071
    .local v3, curCV_contentId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3073
    .local v4, curCV_shuffleMode:Ljava/lang/Integer;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_a

    .line 3074
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #curCV:Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 3075
    .restart local v2       #curCV:Landroid/content/ContentValues;
    if-nez v2, :cond_b

    .line 3076
    const-string v13, "[DMPMusicPlaybackService]"

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

    .line 3099
    :cond_a
    :goto_4
    const/4 v13, 0x1

    if-ne v6, v13, :cond_11

    .line 3101
    const-string v13, "[DMPMusicPlaybackService]"

    const-string v14, "getAlbumArtPathByPosition()..Duplated Album art request. Ignore this request and break it."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3102
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3080
    :cond_b
    const-string v13, "content"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "shuffle"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 3081
    :cond_c
    const-string v13, "[DMPMusicPlaybackService]"

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

    goto :goto_4

    .line 3085
    :cond_d
    const-string v13, "content"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3086
    const-string v13, "shuffle"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 3088
    if-eqz v3, :cond_e

    if-nez v4, :cond_f

    .line 3089
    :cond_e
    const-string v13, "[DMPMusicPlaybackService]"

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

    goto :goto_4

    .line 3093
    :cond_f
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_10

    .line 3094
    const/4 v6, 0x1

    .line 3095
    goto :goto_4

    .line 3073
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 3106
    :cond_11
    if-nez v11, :cond_12

    .line 3108
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    const/16 v14, 0x2afc

    invoke-virtual {v13, v14}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 3109
    .local v10, msg:Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3110
    .local v5, data:Landroid/os/Bundle;
    const-string v13, "shuffle"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3111
    const-string v13, "position"

    move/from16 v0, p1

    invoke-virtual {v5, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3112
    const-string v13, "server"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3113
    const-string v13, "content"

    invoke-virtual {v5, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3114
    invoke-virtual {v10, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3115
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    invoke-virtual {v13, v10}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v5           #data:Landroid/os/Bundle;
    .end local v10           #msg:Landroid/os/Message;
    :cond_12
    move-object v13, v11

    .line 3118
    goto/16 :goto_0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 16
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3122
    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByShufflePosition()... position => "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3124
    const/4 v11, 0x0

    .line 3125
    .local v11, retval:Ljava/lang/String;
    const/4 v1, 0x0

    .line 3127
    .local v1, contentID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    if-nez v13, :cond_0

    .line 3128
    const-string v13, "[DMPMusicPlaybackService]"

    const-string v14, "getAlbumArtPathByShufflePosition()...mPlayList is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3129
    const/4 v13, 0x0

    .line 3222
    :goto_0
    return-object v13

    .line 3132
    :cond_0
    if-ltz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    array-length v13, v13

    move/from16 v0, p1

    if-ge v0, v13, :cond_1

    .line 3133
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v13, v13, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/music/DMPMusicPlaybackService;->getContentIDFromID(I)Ljava/lang/String;

    move-result-object v1

    .line 3140
    if-nez v1, :cond_2

    .line 3141
    const-string v13, "[DMPMusicPlaybackService]"

    const-string v14, "getAlbumArtPathByShufflePosition()...contentID is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3142
    const/4 v13, 0x0

    goto :goto_0

    .line 3136
    :cond_1
    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByShufflePosition()...index out of boundary => position = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mPlayList.length"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    array-length v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3137
    const/4 v13, 0x0

    goto :goto_0

    .line 3146
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    .line 3147
    .local v12, status:Ljava/lang/String;
    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 3148
    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByShufflePosition()...SD card is not ready...status = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    const/4 v13, 0x0

    goto :goto_0

    .line 3154
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    if-eqz v13, :cond_6

    .line 3155
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 3156
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3167
    :cond_4
    :goto_1
    if-eqz v11, :cond_6

    move-object v13, v11

    .line 3168
    goto/16 :goto_0

    .line 3158
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 3159
    .local v7, fileName:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/DMPMusicPlaybackService;->getDmpAlbumArtDirPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3161
    .local v8, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/music/DMPMusicPlaybackService;->checkFileExist(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 3162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v13, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3163
    move-object v11, v8

    goto :goto_1

    .line 3172
    .end local v7           #fileName:Ljava/lang/String;
    .end local v8           #filePath:Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    .line 3173
    .local v6, duplicatedRequest:Z
    const/4 v2, 0x0

    .line 3174
    .local v2, curCV:Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 3175
    .local v3, curCV_contentId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3177
    .local v4, curCV_shuffleMode:Ljava/lang/Integer;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_7

    .line 3178
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #curCV:Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 3179
    .restart local v2       #curCV:Landroid/content/ContentValues;
    if-nez v2, :cond_8

    .line 3180
    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByShufflePosition()...curCV is null when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3203
    :cond_7
    :goto_3
    const/4 v13, 0x1

    if-ne v6, v13, :cond_e

    .line 3205
    const-string v13, "[DMPMusicPlaybackService]"

    const-string v14, "getAlbumArtPathByShufflePosition()..Duplated Album art request. Ignore this request and break it."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3206
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3184
    :cond_8
    const-string v13, "content"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "shuffle"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 3185
    :cond_9
    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByShufflePosition()...There is no content id or shuffle information in curCV when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3189
    :cond_a
    const-string v13, "content"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3190
    const-string v13, "shuffle"

    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 3192
    if-eqz v3, :cond_b

    if-nez v4, :cond_c

    .line 3193
    :cond_b
    const-string v13, "[DMPMusicPlaybackService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAlbumArtPathByShufflePosition()...curCV_contentId or curCV_shuffleMode is null when i = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3197
    :cond_c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    .line 3198
    const/4 v6, 0x1

    .line 3199
    goto :goto_3

    .line 3177
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 3210
    :cond_e
    if-nez v11, :cond_f

    .line 3212
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    const/16 v14, 0x2afc

    invoke-virtual {v13, v14}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 3213
    .local v10, msg:Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3214
    .local v5, data:Landroid/os/Bundle;
    const-string v13, "shuffle"

    const/4 v14, 0x1

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3215
    const-string v13, "position"

    move/from16 v0, p1

    invoke-virtual {v5, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3216
    const-string v13, "server"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3217
    const-string v13, "content"

    invoke-virtual {v5, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3218
    invoke-virtual {v10, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    invoke-virtual {v13, v10}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v5           #data:Landroid/os/Bundle;
    .end local v10           #msg:Landroid/os/Message;
    :cond_f
    move-object v13, v11

    .line 3222
    goto/16 :goto_0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2788
    const/4 v0, 0x0

    .line 2790
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-object v1, v1, Lcom/htc/music/DMPContentItemDetails;->contentAlbum:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-object v1, v1, Lcom/htc/music/DMPContentItemDetails;->contentAlbum:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2791
    :cond_0
    const-string v0, "<unknown>"

    .line 2796
    :goto_0
    return-object v0

    .line 2794
    :cond_1
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-object v0, v1, Lcom/htc/music/DMPContentItemDetails;->contentAlbum:Ljava/lang/String;

    goto :goto_0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 10

    .prologue
    .line 2800
    monitor-enter p0

    .line 2801
    const/4 v9, 0x0

    .line 2802
    .local v9, retval:Ljava/lang/String;
    const/4 v8, 0x1

    .line 2804
    .local v8, isNeedToQuery:Z
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2805
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v1, "artist_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 2806
    .local v7, index:I
    if-ltz v7, :cond_4

    .line 2807
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2808
    const/4 v8, 0x0

    .line 2815
    .end local v7           #index:I
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 2816
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 2818
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 2820
    .local v6, id:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "file_type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "index_id COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 2823
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2824
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2825
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v1, "artist_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 2826
    .restart local v7       #index:I
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2834
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #index:I
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2835
    :cond_2
    const-string v9, "<unknown>"

    .line 2838
    :cond_3
    monitor-exit p0

    return-object v9

    .line 2811
    .restart local v7       #index:I
    :cond_4
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getArtistName()...index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2839
    .end local v7           #index:I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2830
    :cond_5
    :try_start_1
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "getArtistName()...Fail to get artist name...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getAudioId()I
    .locals 2

    .prologue
    .line 2544
    monitor-enter p0

    .line 2545
    :try_start_0
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2546
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    monitor-exit p0

    .line 2549
    :goto_0
    return v0

    .line 2548
    :cond_0
    monitor-exit p0

    .line 2549
    const/4 v0, -0x1

    goto :goto_0

    .line 2548
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioSessionId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3380
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3381
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->getAudioSessionId()I

    move-result v0

    .line 3383
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferingPercent()I
    .locals 3

    .prologue
    .line 2986
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->getPercentage()F

    move-result v1

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 2987
    .local v0, retval:I
    return v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2968
    const/4 v0, 0x0

    .line 2969
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    if-eqz v1, :cond_0

    .line 2970
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-object v0, v1, Lcom/htc/music/DMPContentItemDetails;->contentComposer:Ljava/lang/String;

    .line 2972
    :cond_0
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2954
    const/4 v0, 0x0

    .line 2955
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    if-eqz v1, :cond_0

    .line 2956
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-object v0, v1, Lcom/htc/music/DMPContentItemDetails;->fileName:Ljava/lang/String;

    .line 2958
    :cond_0
    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2961
    const/4 v0, 0x0

    .line 2962
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    if-eqz v1, :cond_0

    .line 2963
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    iget-object v0, v1, Lcom/htc/music/DMPContentItemDetails;->contentGenre:Ljava/lang/String;

    .line 2965
    :cond_0
    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2975
    const/4 v0, 0x0

    .line 2976
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    if-eqz v1, :cond_0

    .line 2977
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "filepath"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2982
    :cond_0
    return-object v0
.end method

.method public getNotifyIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2931
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
    .line 3226
    const-string v1, "[DMPMusicPlaybackService]"

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

    .line 3228
    const/4 v11, 0x0

    .line 3229
    .local v11, queueLen:I
    const/4 v14, 0x0

    .line 3230
    .local v14, tmpCursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 3232
    .local v9, nowPlayingQueue:[Landroid/content/ContentValues;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 3233
    .local v15, where:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serve_id= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

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

    iget-object v2, v0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

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

    .line 3235
    const-string v1, " AND _id IN ("

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3236
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-ge v8, v1, :cond_1

    .line 3237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v1, v1, v8

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3238
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    if-ge v8, v1, :cond_0

    .line 3239
    const-string v1, ","

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3236
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3242
    :cond_1
    const-string v1, ")"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3245
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

    .line 3249
    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_7

    .line 3250
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3252
    const/4 v12, 0x0

    .line 3253
    .local v12, sentTime:I
    if-nez p1, :cond_2

    .line 3254
    move/from16 p1, v11

    .line 3257
    :cond_2
    move/from16 v0, p1

    if-le v11, v0, :cond_5

    .line 3258
    move/from16 v0, p1

    new-array v9, v0, [Landroid/content/ContentValues;

    .line 3262
    :goto_1
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v11, :cond_6

    .line 3263
    rem-int v10, v8, p1

    .line 3265
    .local v10, queueIdx:I
    const-string v1, "content_name"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3266
    .local v13, title:Ljava/lang/String;
    const-string v1, "artist_name"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3268
    .local v7, artist:Ljava/lang/String;
    move/from16 v0, p1

    if-lt v8, v0, :cond_3

    if-nez v10, :cond_3

    .line 3269
    add-int/lit8 v12, v12, 0x1

    .line 3270
    if-eqz v9, :cond_3

    array-length v1, v9

    if-lez v1, :cond_3

    .line 3271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    add-int/lit8 v2, v12, -0x1

    mul-int v2, v2, p1

    mul-int v3, p1, v12

    add-int/lit8 v3, v3, -0x1

    const-string v4, "com.htc.music.DMPMusicPlaybackService"

    invoke-interface {v1, v9, v2, v3, v4}, Lcom/htc/music/IPluginIPCNotify;->onNowplayingQueueUpdated([Landroid/content/ContentValues;IILjava/lang/String;)V

    .line 3274
    :cond_3
    aget-object v1, v9, v10

    if-nez v1, :cond_4

    .line 3275
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    aput-object v1, v9, v10

    .line 3277
    :cond_4
    aget-object v1, v9, v10

    const-string v2, "title"

    invoke-virtual {v1, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3278
    aget-object v1, v9, v10

    const-string v2, "artist"

    invoke-virtual {v1, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3280
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 3262
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3260
    .end local v7           #artist:Ljava/lang/String;
    .end local v10           #queueIdx:I
    .end local v13           #title:Ljava/lang/String;
    :cond_5
    new-array v9, v11, [Landroid/content/ContentValues;

    goto :goto_1

    .line 3283
    :cond_6
    if-eqz v9, :cond_7

    if-lez v11, :cond_7

    .line 3284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    mul-int v2, p1, v12

    add-int/lit8 v3, v11, -0x1

    const-string v4, "com.htc.music.DMPMusicPlaybackService"

    invoke-interface {v1, v9, v2, v3, v4}, Lcom/htc/music/IPluginIPCNotify;->onNowplayingQueueUpdated([Landroid/content/ContentValues;IILjava/lang/String;)V

    .line 3288
    .end local v12           #sentTime:I
    :cond_7
    if-eqz v14, :cond_8

    .line 3290
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3291
    const/4 v14, 0x0

    .line 3293
    :cond_8
    return-void
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2926
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
    .line 3367
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->getDLNAErrorString()Ljava/lang/String;

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
    .line 3296
    monitor-enter p0

    .line 3297
    const/4 v1, 0x0

    .line 3299
    .local v1, retval:I
    :try_start_0
    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 3300
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_0

    .line 3301
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v3, v3, p1

    if-ne v2, v3, :cond_1

    .line 3303
    move v1, v0

    .line 3311
    .end local v0           #i:I
    :cond_0
    :goto_1
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<< getPositionByShufflePosition( "

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

    .line 3312
    monitor-exit p0

    return v1

    .line 3300
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3309
    .end local v0           #i:I
    :cond_2
    move v1, p1

    goto :goto_1

    .line 3313
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
    .line 2553
    monitor-enter p0

    .line 2554
    :try_start_0
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    monitor-exit p0

    return v0

    .line 2555
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
    .line 2910
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 2906
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 2894
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    return v0
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
    .line 3346
    monitor-enter p0

    .line 3347
    const/4 v1, 0x0

    .line 3349
    .local v1, retval:I
    :try_start_0
    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 3350
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_0

    .line 3351
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_1

    .line 3353
    move v1, v0

    .line 3361
    .end local v0           #i:I
    :cond_0
    :goto_1
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> getShufflePositionByPosition( "

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

    .line 3362
    monitor-exit p0

    return v1

    .line 3350
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3359
    .end local v0           #i:I
    :cond_2
    move v1, p1

    goto :goto_1

    .line 3363
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTrackDetails(I)V
    .locals 5
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 3318
    const-string v1, "[DMPMusicPlaybackService]"

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

    .line 3320
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-lt p1, v1, :cond_2

    .line 3321
    :cond_0
    const-string v1, "[DMPMusicPlaybackService]"

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

    .line 3343
    :cond_1
    :goto_0
    return-void

    .line 3325
    :cond_2
    iput p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryPosition:I

    .line 3329
    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    if-ne v1, v4, :cond_3

    .line 3330
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    .line 3336
    .local v0, tempQueue:[I
    :goto_1
    aget v1, v0, p1

    invoke-direct {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->getContentIDFromID(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;

    .line 3338
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    .line 3340
    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### getTrackDetails()... getContentItemDetails...mServerID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mQueryContentID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3341
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;

    invoke-interface {v1, v4, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3333
    .end local v0           #tempQueue:[I
    :cond_3
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    .restart local v0       #tempQueue:[I
    goto :goto_1
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 10

    .prologue
    .line 2749
    monitor-enter p0

    .line 2750
    const/4 v9, 0x0

    .line 2751
    .local v9, retval:Ljava/lang/String;
    const/4 v8, 0x1

    .line 2753
    .local v8, isNeedToQuery:Z
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2754
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v1, "content_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 2755
    .local v7, index:I
    if-ltz v7, :cond_2

    .line 2756
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2757
    const/4 v8, 0x0

    .line 2764
    .end local v7           #index:I
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 2765
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 2767
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 2769
    .local v6, id:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "file_type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "index_id COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 2772
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2773
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2774
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v1, "content_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 2775
    .restart local v7       #index:I
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2783
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #index:I
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v9

    .line 2760
    .restart local v7       #index:I
    :cond_2
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrackName()...index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2784
    .end local v7           #index:I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2779
    :cond_3
    :try_start_1
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "getTrackName()...Fail to get track name...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 2559
    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public isPluginReady()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3371
    const/4 v0, 0x0

    .line 3373
    .local v0, retval:Z
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    sget-object v2, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->READY:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    if-ne v1, v2, :cond_0

    .line 3374
    const/4 v0, 0x1

    .line 3376
    :cond_0
    return v0
.end method

.method public next(ZZ)V
    .locals 3
    .parameter "force"
    .parameter "changeSong"

    .prologue
    .line 2670
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^^next()...force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    monitor-enter p0

    .line 2673
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToNextOrPre:J

    .line 2675
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-gtz v0, :cond_0

    .line 2676
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "No play queue"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    monitor-exit p0

    .line 2711
    :goto_0
    return-void

    .line 2680
    :cond_0
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_7

    .line 2682
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mRepeatMode:I

    if-nez v0, :cond_5

    if-nez p1, :cond_5

    .line 2684
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->gotoIdleState()V

    .line 2685
    const-string v0, "com.htc.music.plugin.playbackcomplete"

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 2686
    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v0, :cond_1

    .line 2687
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "Track end. Set mPausedByTransientLossOfFocus = false;"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 2690
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 2691
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    .line 2692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsPlayPressed:Z

    .line 2702
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 2703
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V

    .line 2705
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2706
    if-eqz p2, :cond_4

    .line 2707
    const-string v0, "com.htc.music.plugin.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 2710
    :cond_4
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "^^next()...END "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2694
    :cond_5
    :try_start_1
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mRepeatMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    if-eqz p1, :cond_2

    .line 2695
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 2705
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2699
    :cond_7
    :try_start_2
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "intent"

    .prologue
    .line 1727
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1728
    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    .line 1729
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1730
    .local v0, action:Ljava/lang/String;
    const-string v1, "[DMPMusicPlaybackService]"

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

    iget v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->reloadQueue(Z)V

    .line 1733
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V

    .line 1735
    const-class v1, Lcom/htc/music/IDmpUiPlaybackService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1736
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, ">> onBind IDmpUiPlaybackService!! <<"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mUiBinder:Landroid/os/IBinder;

    .line 1740
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mBinder:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 1746
    const-string v4, "[DMPMusicPlaybackService]"

    const-string v5, "onCreate()..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1749
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/htc/music/DMPMusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 1751
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1752
    .local v2, status:Landroid/app/Notification;
    const/4 v4, 0x2

    invoke-virtual {p0, v4, v2}, Lcom/htc/music/DMPMusicPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 1754
    const-string v4, "DMP"

    const/4 v5, 0x7

    invoke-virtual {p0, v4, v5}, Lcom/htc/music/DMPMusicPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 1758
    new-instance v4, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-direct {v4, p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;-><init>(Lcom/htc/music/DMPMusicPlaybackService;)V

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    .line 1759
    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 1762
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/htc/music/DMPMusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1763
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1764
    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1768
    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1769
    .local v0, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v5, 0xea60

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1771
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->bindDLNAService()Z

    .line 1774
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "[DMPMusicPlaybackService]"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1775
    .local v3, thread:Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 1776
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUILooper:Landroid/os/Looper;

    .line 1777
    new-instance v4, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUILooper:Landroid/os/Looper;

    invoke-direct {v4, p0, v5}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;-><init>(Lcom/htc/music/DMPMusicPlaybackService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    .line 1780
    invoke-static {p0}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1781
    sget-object v4, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->READY:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    .line 1787
    :goto_0
    return-void

    .line 1784
    :cond_0
    sget-object v4, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    iput-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1792
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "onDestroy()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1796
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    :cond_0
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    const/16 v1, 0x2b01

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    .line 1802
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1805
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1806
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1808
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1809
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1810
    iput-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1813
    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1814
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->stopForeground(Z)V

    .line 1816
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;

    invoke-virtual {v0}, Lcom/htc/music/DMPContentItemDetails;->reset()V

    .line 1818
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->unBindDLNAService()V

    .line 1820
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mAlbumArtNameTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1821
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIdToContentIdTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1822
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mQueueToGetAlbumArtPath:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1824
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1826
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "onDestroy finished."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1832
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "onRebind()..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1834
    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    .line 1835
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1836
    .local v0, action:Ljava/lang/String;
    const-string v1, "[DMPMusicPlaybackService]"

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

    iget v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 1839
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1844
    const-string v3, "[DMPMusicPlaybackService]"

    const-string v4, "onStartCommand()..."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    iput p3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceStartId:I

    .line 1846
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1848
    if-eqz p1, :cond_0

    .line 1850
    const-string v3, "command"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1851
    .local v0, cmd:Ljava/lang/String;
    const-string v3, "forcePlay"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1853
    .local v1, forcePlay:Z
    const-string v3, "com.htc.music.refreshplaylist"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1854
    const-string v3, "[DMPMusicPlaybackService]"

    const-string v4, "onStartCommand CMDREFRESH_PLAYLIST"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    const-string v3, "content"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;

    .line 1857
    const-string v3, "server"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;

    .line 1858
    const-string v3, "container"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;

    .line 1859
    const-string v3, "startIdx"

    invoke-virtual {p1, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J

    .line 1860
    const-string v3, "endIdx"

    invoke-virtual {p1, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J

    .line 1861
    const-string v3, "direction"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDirection:I

    .line 1862
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "shufflemode"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    .line 1863
    const-string v3, "dmsFilePath"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDmsFilePath:Ljava/lang/String;

    .line 1866
    invoke-direct {p0, v6}, Lcom/htc/music/DMPMusicPlaybackService;->reloadQueue(Z)V

    .line 1867
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V

    .line 1869
    if-eqz v1, :cond_0

    .line 1870
    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->play()V

    .line 1876
    .end local v0           #cmd:Ljava/lang/String;
    .end local v1           #forcePlay:Z
    :cond_0
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1877
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 1878
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1879
    return v6
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 1885
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "onUnbind()..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1890
    .local v0, action:Ljava/lang/String;
    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    if-gtz v1, :cond_1

    .line 1891
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "incorrect service refer count, try to recover it"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    :cond_0
    :goto_0
    return v4

    .line 1895
    :cond_1
    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    .line 1896
    const-string v1, "[DMPMusicPlaybackService]"

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

    iget v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    invoke-direct {p0, v4}, Lcom/htc/music/DMPMusicPlaybackService;->saveQueue(Z)V

    .line 1901
    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceInUse:I

    if-gtz v1, :cond_0

    .line 1907
    invoke-virtual {p0, v4}, Lcom/htc/music/DMPMusicPlaybackService;->stopForeground(Z)V

    .line 1908
    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->stopSelf(I)V

    .line 1910
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "onUnbind finished"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2588
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "pause()..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2614
    :goto_0
    return-void

    .line 2599
    :cond_0
    iput-boolean v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsPlayPressed:Z

    .line 2601
    monitor-enter p0

    .line 2602
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->isPlaying()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 2604
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->pause()V

    .line 2605
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->gotoIdleState()V

    .line 2606
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 2607
    const-string v1, "com.htc.music.plugin.statechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2613
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2609
    :catch_0
    move-exception v0

    .line 2610
    .local v0, ex:Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public play()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2617
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "play()..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2618
    iput-boolean v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsPlayPressed:Z

    .line 2620
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2621
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "call play() and mediaplayer is initialized"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->start()V

    .line 2625
    iget-boolean v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v1, :cond_0

    .line 2626
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 2627
    .local v0, status:Landroid/app/Notification;
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/DMPMusicPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 2629
    iput-boolean v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 2630
    const-string v1, "com.htc.music.plugin.statechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 2637
    .end local v0           #status:Landroid/app/Notification;
    :cond_0
    :goto_0
    return-void

    .line 2635
    :cond_1
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "play()...mediaplayer is not initialized..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2719
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2720
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->position()J

    move-result-wide v0

    .line 2722
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prev(Z)V
    .locals 2
    .parameter "changeSong"

    .prologue
    .line 2640
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "%%prev()...Begin"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2641
    monitor-enter p0

    .line 2643
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToNextOrPre:J

    .line 2651
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    if-lez v0, :cond_2

    .line 2652
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    .line 2657
    :goto_0
    if-eqz p1, :cond_0

    .line 2658
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V

    .line 2660
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2662
    if-eqz p1, :cond_1

    .line 2663
    const-string v0, "com.htc.music.plugin.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 2666
    :cond_1
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "%%prev()...End"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    return-void

    .line 2654
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    goto :goto_0

    .line 2660
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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
    .line 2936
    const-string v0, "[DMPMusicPlaybackService]"

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

    .line 2938
    if-eqz p1, :cond_0

    .line 2939
    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    .line 2941
    :cond_0
    return-void
.end method

.method public seek(J)J
    .locals 6
    .parameter "pos"

    .prologue
    const-wide/16 v2, -0x1

    .line 2726
    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mUriPath:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mUriPath:Ljava/lang/String;

    const-string v5, "htc-dlna"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2727
    const-string v4, "[DMPMusicPlaybackService]"

    const-string v5, "seek()...This song could not be allowed to be seeked. Do nothing while seeking."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2745
    :goto_0
    return-wide v2

    .line 2731
    :cond_0
    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v4}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2732
    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->duration()J

    move-result-wide v0

    .line 2733
    .local v0, curDuration:J
    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 2734
    move-wide p1, v0

    .line 2736
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    const-wide/16 p1, 0x0

    .line 2738
    :cond_2
    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seek(), curDuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2740
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayer:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-virtual {v2, p1, p2}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->seek(J)J

    move-result-wide v2

    goto :goto_0

    .line 2743
    .end local v0           #curDuration:J
    :cond_3
    const-string v4, "[DMPMusicPlaybackService]"

    const-string v5, "seek()...mPlayer = null or mPlayer is not initialized... "

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPlaylist([I)V
    .locals 7
    .parameter "list"

    .prologue
    .line 2496
    monitor-enter p0

    .line 2498
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService;->getAudioId()I

    move-result v3

    .line 2499
    .local v3, oldId:I
    array-length v1, p1

    .line 2500
    .local v1, listlength:I
    const/4 v2, 0x1

    .line 2503
    .local v2, newlist:Z
    iget v5, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-ne v5, v1, :cond_0

    .line 2504
    const/4 v2, 0x0

    .line 2505
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2506
    aget v5, p1, v0

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v6, v6, v0

    if-eq v5, v6, :cond_4

    .line 2507
    const/4 v2, 0x1

    .line 2512
    .end local v0           #i:I
    :cond_0
    if-eqz v2, :cond_1

    .line 2513
    const/4 v5, -0x1

    invoke-direct {p0, p1, v5}, Lcom/htc/music/DMPMusicPlaybackService;->addToPlayList([II)V

    .line 2519
    :cond_1
    const/4 v4, 0x0

    .line 2520
    .local v4, playPosFound:Z
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_2

    .line 2521
    aget v5, p1, v0

    if-ne v5, v3, :cond_5

    .line 2522
    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    .line 2523
    const/4 v4, 0x1

    .line 2527
    :cond_2
    if-nez v4, :cond_3

    .line 2528
    const-string v5, "[DMPMusicPlaybackService]"

    const-string v6, "setPlaylist: cannot find the same audio id. Some thing must be wrong."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    .line 2531
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V

    .line 2534
    :cond_3
    monitor-exit p0

    .line 2535
    return-void

    .line 2505
    .end local v4           #playPosFound:Z
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2520
    .restart local v4       #playPosFound:Z
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2534
    .end local v0           #i:I
    .end local v1           #listlength:I
    .end local v2           #newlist:Z
    .end local v3           #oldId:I
    .end local v4           #playPosFound:Z
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setQueuePosition(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 2843
    const-string v0, "[DMPMusicPlaybackService]"

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

    .line 2844
    monitor-enter p0

    .line 2845
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->initErrorRetryHandle()V

    .line 2847
    if-ltz p1, :cond_0

    .line 2848
    iput p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    .line 2850
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V

    .line 2852
    const-string v0, "com.htc.music.plugin.metachanged"

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 2853
    monitor-exit p0

    .line 2854
    return-void

    .line 2853
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 3
    .parameter "repeatmode"

    .prologue
    .line 2898
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRepeatMode()...repeatmode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    monitor-enter p0

    .line 2900
    :try_start_0
    iput p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mRepeatMode:I

    .line 2901
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->saveQueue(Z)V

    .line 2902
    monitor-exit p0

    .line 2903
    return-void

    .line 2902
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 5
    .parameter "shufflemode"

    .prologue
    const/4 v4, 0x1

    .line 2857
    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShuffleMode()...shufflemode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2858
    monitor-enter p0

    .line 2859
    :try_start_0
    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_0

    .line 2860
    monitor-exit p0

    .line 2891
    :goto_0
    return-void

    .line 2862
    :cond_0
    iput p1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    .line 2864
    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mShuffleMode:I

    if-ne v1, v4, :cond_2

    .line 2865
    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    invoke-direct {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->ensurePlayListBakCapacity(I)V

    .line 2866
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_1

    .line 2867
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 2866
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2869
    :cond_1
    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I

    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I

    invoke-direct {p0, v1, v2}, Lcom/htc/music/DMPMusicPlaybackService;->setShuffleSeq(II)V

    .line 2870
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayList:[I

    invoke-direct {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->applyShuffleSeq([I)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->setPlaylist([I)V

    .line 2885
    .end local v0           #i:I
    :goto_2
    const-string v1, "com.htc.music.plugin.queuechanged"

    invoke-direct {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 2886
    const-string v1, "com.htc.music.plugin.metachanged"

    invoke-direct {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 2889
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->saveQueue(Z)V

    .line 2890
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2873
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    if-eqz v1, :cond_4

    .line 2874
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 2875
    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShuffleMode mPlayListBak:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2876
    :cond_3
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    invoke-virtual {p0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->setPlaylist([I)V

    .line 2877
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService;->mPlayListBak:[I

    goto :goto_2

    .line 2881
    .end local v0           #i:I
    :cond_4
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "setShuffleMode()....mPlayListBak = null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public startPluginActivity()V
    .locals 0

    .prologue
    .line 2951
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 2583
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "stop()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/DMPMusicPlaybackService;->stop(Z)V

    .line 2585
    return-void
.end method

.method public unregisterCallback()V
    .locals 2

    .prologue
    .line 2945
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "unregisterCallback()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;

    .line 2947
    return-void
.end method
