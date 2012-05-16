.class public Lcom/htc/music/carmode/CarNowPlayingActivity;
.super Landroid/app/Activity;
.source "CarNowPlayingActivity.java"

# interfaces
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;
.implements Lcom/htc/music/util/IMonitorHeadSetStatus;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;,
        Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;
    }
.end annotation


# static fields
.field private static final ALBUM_QUEUE:Ljava/lang/String; = "album_queue"

.field private static final ALBUM_QUEUE_POS:Ljava/lang/String; = "album_queue_pos"

.field private static final ALBUM_QUEUE_SIZE:Ljava/lang/String; = "album_queue_size"

.field private static final ANIMATION_STATE:Ljava/lang/String; = "animation_state"

.field private static final COEFFICIENT_GESTURE_ALBUM_RATIO:F = 0.3f

.field private static final COEFFICIENT_GESTURE_BACK_RATIO:F = 0.2f

.field private static final COEFFICIENT_TOUCH_INTERVAL:F = 100.0f

.field private static final COEFFICIENT_TOUCH_RANGE_RATIO:F = 0.03f

.field private static final GLIDER_STATE:Ljava/lang/String; = "glider_state"

.field private static final IS_BEATS_ON:Ljava/lang/String; = "is_beats_on"

.field private static final IS_HEADSET_PLUGGED:Ljava/lang/String; = "is_headset_plugged"

.field private static final IS_PLAYING:Ljava/lang/String; = "is_playing"

.field private static final NONUI_ANIMATION_INIT:I = 0xe

.field private static final NONUI_DO_NEXT:I = 0x6

.field private static final NONUI_DO_PLAY_PAUSE:I = 0x3

.field private static final NONUI_DO_PREV:I = 0x7

.field private static final NONUI_DO_REPEAT:I = 0x5

.field private static final NONUI_DO_SEEK:I = 0x14

.field private static final NONUI_DO_SHUFFLE:I = 0x4

.field private static final NONUI_DO_STATE_CHANGE_UI:I = 0x13

.field private static final NONUI_END_ANIMATION:I = 0x12

.field private static final NONUI_GET_ALBUM_QUEUE_POS:I = 0xd

.field private static final NONUI_GET_BEATS_STATE:I = 0x15

.field private static final NONUI_GET_PLAY_STATE:I = 0x9

.field private static final NONUI_GET_REPEAT_STATE:I = 0xb

.field private static final NONUI_GET_SHUFFLE_STATE:I = 0xa

.field private static final NONUI_GET_TRACK_INFO:I = 0x2

.field private static final NONUI_GET_TRACK_TIME:I = 0x8

.field private static final NONUI_PLAY_ALBUM:I = 0x1

.field private static final NONUI_SKIP_ANIMATION:I = 0xf

.field private static final NONUI_START_NEXT_ANIMATION:I = 0x10

.field private static final NONUI_START_PREV_ANIMATION:I = 0x11

.field private static final NONUI_UPDATE_GLIDER:I = 0xc

.field private static final REPEAT_MODE:Ljava/lang/String; = "repeat_mode"

.field private static final SEEK_POS:Ljava/lang/String; = "seek_pos"

.field private static final SHUFFLE_MODE:Ljava/lang/String; = "shuffle_mode"

.field private static final TAG:Ljava/lang/String; = "[CarNowPlayingActivity]"

.field private static final UI_ANIMATION_INIT:I = 0x7

.field private static final UI_DISPATCH_TOUCH_EVENT:I = 0xc

.field private static final UI_DO_STATE_CHANGE_UI:I = 0xb

.field private static final UI_QUEUE_NOT_FOUND:I = 0xd

.field private static final UI_REFRESH_BEATS_STATE:I = 0xe

.field private static final UI_REFRESH_GLIDER:I = 0x8

.field private static final UI_REFRESH_PLAY_STATE:I = 0x2

.field private static final UI_REFRESH_REPEAT:I = 0x4

.field private static final UI_REFRESH_SHUFFLE:I = 0x3

.field private static final UI_REFRESH_TRACK_INFO:I = 0x1

.field private static final UI_REFRESH_TRACK_TIME:I = 0x5

.field private static final UI_SHOW_TOAST:I = 0x6

.field private static final UI_START_NEXT_ANIMATION:I = 0x9

.field private static final UI_START_PREV_ANIMATION:I = 0xa


# instance fields
.field private m3DLayout:Landroid/widget/RelativeLayout;

.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field mAlbumArtGesture:Landroid/view/View;

.field private mAlbumArtGestureDetector:Landroid/view/GestureDetector;

.field private mAlbumArtistName:Landroid/widget/TextView;

.field private mBeatsIndicator:Landroid/widget/ImageView;

.field private mCarDockListener:Landroid/content/BroadcastReceiver;

.field private mElapsedTime:J

.field private mEnalbeAutoPlay:Z

.field private mErrorText:Landroid/widget/TextView;

.field mFirstMe:Landroid/view/MotionEvent;

.field mFirstTouchTime:J

.field private mGestureAlbumWidth:D

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureHeight:D

.field private mGlanceView:Landroid/view/ViewGroup;

.field private mGlanceViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

.field private mGliderState:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

.field mIsFling:Z

.field mIsSeriveBinded:Z

.field private mMainLayout:Landroid/view/ViewGroup;

.field private mNextButton:Lcom/htc/widget/HtcRimImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

.field private mPauseButton:Lcom/htc/widget/HtcRimImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

.field private mPrevButton:Lcom/htc/widget/HtcRimImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mQueueSize:I

.field private mRepeatButton:Lcom/htc/widget/HtcImageButton;

.field private mRepeatListener:Landroid/view/View$OnClickListener;

.field protected mScanReceiver:Landroid/content/BroadcastReceiver;

.field mSecondMe:Landroid/view/MotionEvent;

.field mSecondTouchTime:J

.field mService:Lcom/htc/music/IMediaPlaybackService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mShuffleButton:Lcom/htc/widget/HtcImageButton;

.field private mShuffleListener:Landroid/view/View$OnClickListener;

.field private mShuffleRepeatDivider:Landroid/view/View;

.field private mStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

.field private mTitle:Lcom/htc/widget/ActionBarText;

.field private mToast:Landroid/widget/Toast;

.field private mTotalTime:J

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mTouchRangeX:D

.field private mTouchRangeY:D

.field private mTrackName:Landroid/widget/TextView;

.field private mTrackTimeInfo:Landroid/widget/TextView;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4034

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 79
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    .line 82
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mMainLayout:Landroid/view/ViewGroup;

    .line 83
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 84
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 85
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 86
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    .line 87
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I

    .line 88
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mEnalbeAutoPlay:Z

    .line 89
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    .line 90
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextButton:Lcom/htc/widget/HtcRimImageButton;

    .line 91
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevButton:Lcom/htc/widget/HtcRimImageButton;

    .line 92
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    .line 93
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    .line 94
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mToast:Landroid/widget/Toast;

    .line 95
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackTimeInfo:Landroid/widget/TextView;

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureHeight:D

    .line 99
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackName:Landroid/widget/TextView;

    .line 100
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtistName:Landroid/widget/TextView;

    .line 101
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;

    .line 102
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    .line 103
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleRepeatDivider:Landroid/view/View;

    .line 104
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    .line 107
    iput v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mQueueSize:I

    .line 110
    iput-wide v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTotalTime:J

    .line 111
    iput-wide v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mElapsedTime:J

    .line 114
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 115
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsSeriveBinded:Z

    .line 122
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    .line 123
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 184
    iput-wide v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeX:D

    .line 185
    iput-wide v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeY:D

    .line 188
    const-wide/high16 v0, 0x4049

    iput-wide v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureAlbumWidth:D

    .line 192
    new-instance v0, Lcom/htc/music/util/HeadSetHelper;

    invoke-direct {v0}, Lcom/htc/music/util/HeadSetHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    .line 195
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 197
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGesture:Landroid/view/View;

    .line 344
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$3;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 357
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mFirstMe:Landroid/view/MotionEvent;

    .line 358
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSecondMe:Landroid/view/MotionEvent;

    .line 359
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsFling:Z

    .line 360
    iput-wide v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mFirstTouchTime:J

    .line 361
    iput-wide v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSecondTouchTime:J

    .line 362
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$4;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 969
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$9;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 1044
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$10;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$10;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1168
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$13;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$13;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleListener:Landroid/view/View$OnClickListener;

    .line 1236
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$14;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$14;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatListener:Landroid/view/View$OnClickListener;

    .line 1271
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$15;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$15;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 1312
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$16;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$16;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextListener:Landroid/view/View$OnClickListener;

    .line 1320
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$17;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$17;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 1356
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$18;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    .line 2174
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$19;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$19;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mScanReceiver:Landroid/content/BroadcastReceiver;

    .line 2196
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$20;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/carmode/CarNowPlayingActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureHeight:D

    return-wide v0
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/CarNowPlayingActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureAlbumWidth:D

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/htc/music/carmode/CarNowPlayingActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeY:D

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startLibraryActivity()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->launchSoundEffectSetting()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackInfo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackTime()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarGliderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updatePlayState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateGlider()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/music/carmode/CarNowPlayingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->skipAnimation()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->animationRefresh()V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onServiceConnectedHandle()V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->doSelectionChangeUI(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->doStateChangeUI(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtistName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/carmode/CarNowPlayingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mQueueSize:I

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/widget/ActionBarText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->setPlayPauseButtonImage(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->setShuffleButtonImage(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->setRepeatButtonImage(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshTrackTime()V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/htc/music/carmode/CarNowPlayingActivity;[II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshGlider([II)V

    return-void
.end method

.method static synthetic access$3602(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mEnalbeAutoPlay:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->checkCurrentStorateState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/music/carmode/CarNowPlayingActivity;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->onHandleNonUIGetTrackInfo()V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->doPauseResume()V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->toggleShuffle()V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->cycleRepeat()V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->doNext()V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->doPrev()V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getTrackTime()V

    return-void
.end method

.method static synthetic access$4700(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshShuffleButton()V

    return-void
.end method

.method static synthetic access$4800(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshRepeatButton()V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->animationInit()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startNextAnimation()V

    return-void
.end method

.method static synthetic access$5100(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startPrevAnimation()V

    return-void
.end method

.method static synthetic access$5200(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->isBeatsEffectOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mMainLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/carmode/CarNowPlayingActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeX:D

    return-wide v0
.end method

.method private animationInit()V
    .locals 5

    .prologue
    .line 1907
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1908
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1909
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1910
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1919
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 1913
    :cond_1
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "mService.activityWakeup()"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->activityWakeup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1918
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateGlider()V

    goto :goto_0

    .line 1915
    :catch_0
    move-exception v0

    .line 1916
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private animationRefresh()V
    .locals 3

    .prologue
    const/16 v2, 0xe

    .line 1897
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "animationRefresh()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_1

    .line 1899
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1900
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 1901
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1903
    :cond_1
    return-void
.end method

.method private checkCurrentStorateState()Z
    .locals 4

    .prologue
    .line 2145
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 2146
    .local v0, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2148
    :cond_0
    const/4 v1, 0x1

    .line 2169
    :goto_0
    return v1

    .line 2152
    :cond_1
    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2153
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2154
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    const v2, 0x7f070049

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2169
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2156
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    const v2, 0x7f070048

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 2159
    :cond_3
    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "bad_removal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2161
    :cond_4
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    const v2, 0x20400a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 2163
    :cond_5
    const-string v1, "unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2164
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    const v2, 0x20401fa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 2166
    :cond_6
    const-string v1, "[CarNowPlayingActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExternalStorageState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private cycleRepeat()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1245
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 1268
    :goto_0
    return-void

    .line 1249
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    .line 1250
    .local v0, mode:I
    if-nez v0, :cond_1

    .line 1251
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1252
    const v1, 0x7f070055

    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->showToast(I)V

    .line 1264
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshRepeatButton()V

    goto :goto_0

    .line 1265
    .end local v0           #mode:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1253
    .restart local v0       #mode:I
    :cond_1
    if-ne v0, v2, :cond_3

    .line 1254
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1255
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1256
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1257
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshShuffleButton()V

    .line 1259
    :cond_2
    const v1, 0x7f070054

    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->showToast(I)V

    goto :goto_1

    .line 1261
    :cond_3
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1262
    const v1, 0x7f070053

    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->showToast(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private doNext()V
    .locals 3

    .prologue
    .line 1330
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 1340
    :cond_0
    :goto_0
    return-void

    .line 1333
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAnimationStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1334
    const-string v1, "[CarNowPlayingActivity]"

    const-string v2, "doNext"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->next()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1337
    :catch_0
    move-exception v0

    .line 1338
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 1281
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1283
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 1284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshPlaybackControl(Z)V

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1288
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 1289
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshPlaybackControl(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1297
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doPrev()V
    .locals 3

    .prologue
    .line 1343
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 1354
    :cond_0
    :goto_0
    return-void

    .line 1346
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAnimationStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1347
    const-string v1, "[CarNowPlayingActivity]"

    const-string v2, "doPrev"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->prev()V

    .line 1349
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackTime()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1351
    :catch_0
    move-exception v0

    .line 1352
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private doSelectionChangeUI(I)V
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/carmode/CarGliderAdapter;->onSelectionChanged(I)V

    .line 1114
    :cond_0
    return-void
.end method

.method private doStateChangeUI(I)V
    .locals 3
    .parameter "nState"

    .prologue
    .line 1131
    iput p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderState:I

    .line 1133
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v1, :cond_0

    .line 1139
    const/16 v1, 0x12

    if-ne v1, p1, :cond_2

    .line 1140
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 1143
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v1, :cond_0

    .line 1144
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1145
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "glider_state"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1146
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v1, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private getTrackTime()V
    .locals 6

    .prologue
    .line 1843
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_2

    .line 1846
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mElapsedTime:J

    .line 1847
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    .line 1848
    .local v1, isPlaying:Z
    if-eqz v1, :cond_0

    .line 1849
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v2, :cond_0

    .line 1850
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    const/16 v3, 0x8

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1853
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 1854
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1855
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1857
    :cond_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1864
    .end local v1           #isPlaying:Z
    :cond_2
    :goto_0
    return-void

    .line 1859
    :catch_0
    move-exception v0

    .line 1860
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private initAlbumArtGestureDetector()V
    .locals 2

    .prologue
    .line 285
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "Gesture initKeypadGestureDetector"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/htc/music/carmode/CarNowPlayingActivity$2;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$2;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGestureDetector:Landroid/view/GestureDetector;

    .line 336
    return-void
.end method

.method private initGlider()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 722
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-nez v1, :cond_0

    .line 723
    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 724
    const-string v1, "common_app_bkg"

    const v2, 0x2080001

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 726
    .local v0, bkgIdentifier:I
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/view/SSurfaceView;->set3DGlobalBackground(I)V

    .line 728
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/view/SSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    const v1, 0x7f080035

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 731
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 734
    .end local v0           #bkgIdentifier:I
    :cond_0
    return-void
.end method

.method private initKeypadGestureDetector()V
    .locals 2

    .prologue
    .line 258
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "Gesture initKeypadGestureDetector"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/htc/music/carmode/CarNowPlayingActivity$1;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$1;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 281
    return-void
.end method

.method private initPlaybackControl()V
    .locals 9

    .prologue
    const v8, 0x7f020008

    const v7, 0x7f020001

    const/high16 v6, 0x7f02

    .line 763
    const v1, 0x7f080037

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackName:Landroid/widget/TextView;

    .line 764
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackName:Landroid/widget/TextView;

    const-string v2, "com.htc.R.style.automotive_darklist_primary_m"

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 766
    const v1, 0x7f080038

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtistName:Landroid/widget/TextView;

    .line 767
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtistName:Landroid/widget/TextView;

    const-string v2, "com.htc.R.style.automotive_darklist_secondary_m"

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 774
    const v1, 0x7f08003a

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimImageButton;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    .line 775
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v2, "automotive_common_b_transport_large_outer"

    const v3, 0x7f020005

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "automotive_common_b_transport_large_pressed"

    const v4, 0x7f020006

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "automotive_common_b_transport_large_rest"

    const v5, 0x7f020007

    invoke-static {p0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 785
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const v2, 0x7f020011

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 786
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    const v1, 0x7f08003c

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimImageButton;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextButton:Lcom/htc/widget/HtcRimImageButton;

    .line 790
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v2, "automative_common_b_transport_outer"

    invoke-static {p0, v2, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "automotive_common_b_transport_pressed"

    invoke-static {p0, v3, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "automative_common_b_transport_rest"

    invoke-static {p0, v4, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 800
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextButton:Lcom/htc/widget/HtcRimImageButton;

    const v2, 0x7f02000f

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 801
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextButton:Lcom/htc/widget/HtcRimImageButton;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    const v1, 0x7f08003b

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimImageButton;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevButton:Lcom/htc/widget/HtcRimImageButton;

    .line 804
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v2, "automative_common_b_transport_outer"

    invoke-static {p0, v2, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "automotive_common_b_transport_pressed"

    invoke-static {p0, v3, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "automative_common_b_transport_rest"

    invoke-static {p0, v4, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 814
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevButton:Lcom/htc/widget/HtcRimImageButton;

    const v2, 0x7f020012

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 815
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevButton:Lcom/htc/widget/HtcRimImageButton;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 817
    const v1, 0x7f080043

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcImageButton;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    .line 818
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v2, 0x7f020013

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 819
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 821
    const v1, 0x7f080041

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcImageButton;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    .line 822
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const v2, 0x7f020016

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 823
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 830
    const v1, 0x7f08003f

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleRepeatDivider:Landroid/view/View;

    .line 831
    const-string v1, "common_b_div"

    const v2, 0x2080036

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 832
    .local v0, resId:I
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleRepeatDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 834
    const v1, 0x7f08003d

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackTimeInfo:Landroid/widget/TextView;

    .line 835
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackTimeInfo:Landroid/widget/TextView;

    const-string v2, "com.htc.R.style.automotive_darklist_secondary_s"

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 838
    return-void
.end method

.method private initPresentation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 738
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v0, :cond_0

    .line 739
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 741
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SSurfaceView;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 743
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setEdgeItemScrollRatio(F)V

    .line 744
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnContainerClickListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;)V

    .line 745
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnSelectionChangeListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;)V

    .line 746
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnStateListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;)V

    .line 747
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledReflection(Z)V

    .line 748
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setShiftOneItemMode(Z)V

    .line 749
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 750
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableScroll(Z)V

    .line 751
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-nez v0, :cond_1

    .line 755
    new-instance v0, Lcom/htc/music/carmode/CarGliderAdapter;

    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-direct {v0, p0, v1, v3}, Lcom/htc/music/carmode/CarGliderAdapter;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;Lcom/htc/sunny2/widget/presentation/SPresentation;Z)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    .line 756
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V

    .line 757
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnLayoutListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;)V

    .line 759
    :cond_1
    return-void
.end method

.method private initTitleBar()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x2

    const/4 v8, -0x1

    .line 626
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v6, :cond_0

    .line 718
    :goto_0
    return-void

    .line 630
    :cond_0
    new-instance v6, Lcom/htc/widget/ActionBarText;

    invoke-direct {v6, p0, v9}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    .line 631
    new-instance v6, Lcom/htc/widget/ActionBarContainer;

    invoke-direct {v6, p0}, Lcom/htc/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 632
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v6, v9}, Lcom/htc/widget/ActionBarContainer;->setSupportMode(I)V

    .line 633
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    const v7, 0x7f07001f

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 634
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    .line 635
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 636
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 637
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mMainLayout:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 638
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v6, v11}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 639
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v6, v11}, Lcom/htc/widget/ActionBarContainer;->setClickable(Z)V

    .line 640
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v7, Lcom/htc/music/carmode/CarNowPlayingActivity$5;

    invoke-direct {v7, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$5;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v7, Lcom/htc/music/carmode/CarNowPlayingActivity$6;

    invoke-direct {v7, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$6;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    new-instance v4, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v4, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 662
    .local v4, searchView:Lcom/htc/widget/ActionBarItemView;
    const v6, 0x7f020015

    invoke-virtual {v4, v6}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 663
    invoke-virtual {v4, v9}, Lcom/htc/widget/ActionBarItemView;->setSupportMode(I)V

    .line 664
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v6, v4}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 665
    new-instance v6, Lcom/htc/music/carmode/CarNowPlayingActivity$7;

    invoke-direct {v6, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$7;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    invoke-virtual {v4, v6}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    new-instance v5, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v5, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    .line 678
    .local v5, soundEffectView:Lcom/htc/widget/ActionBarItemView;
    const v6, 0x7f02000e

    invoke-virtual {v5, v6}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 679
    invoke-virtual {v5, v9}, Lcom/htc/widget/ActionBarItemView;->setSupportMode(I)V

    .line 680
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v6, v5}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 681
    new-instance v6, Lcom/htc/music/carmode/CarNowPlayingActivity$8;

    invoke-direct {v6, p0}, Lcom/htc/music/carmode/CarNowPlayingActivity$8;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    const/4 v2, 0x0

    .line 691
    .local v2, linearLayoutInternal:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout;

    .end local v2           #linearLayoutInternal:Landroid/widget/LinearLayout;
    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 692
    .restart local v2       #linearLayoutInternal:Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarText;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 697
    .local v0, animateTextLayout:Landroid/view/View;
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v6, v0}, Lcom/htc/widget/ActionBarText;->removeView(Landroid/view/View;)V

    .line 698
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v6, v2}, Lcom/htc/widget/ActionBarText;->addView(Landroid/view/View;)V

    .line 699
    const/4 v3, 0x0

    .line 701
    .local v3, lparams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 704
    .restart local v3       #lparams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .line 706
    .local v1, frameLayoutInternal:Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout;

    .end local v1           #frameLayoutInternal:Landroid/widget/FrameLayout;
    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 707
    .restart local v1       #frameLayoutInternal:Landroid/widget/FrameLayout;
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 708
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 709
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 711
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    .line 712
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    const v7, 0x7f02000d

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 713
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v3, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 714
    .restart local v3       #lparams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2050001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 715
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 716
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 717
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private isBeatsEffectOn(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 2214
    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2215
    .local v0, audioManager:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 2216
    const-string v3, "[CarNowPlayingActivity]"

    const-string v4, "isBeatsEffectOn - audioManager = null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    const/4 v2, 0x0

    .line 2223
    :goto_0
    return v2

    :cond_0
    move-object v1, v0

    .line 2220
    check-cast v1, Landroid/media/HtcIfAudioManager;

    .line 2221
    .local v1, ifam:Landroid/media/HtcIfAudioManager;
    invoke-interface {v1}, Landroid/media/HtcIfAudioManager;->getBeatsState()Z

    move-result v2

    .line 2222
    .local v2, isBeatsOn:Z
    const-string v3, "[CarNowPlayingActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBeatsOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private launchSoundEffectSetting()V
    .locals 4

    .prologue
    .line 2240
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2241
    .local v1, soundEffectIntent:Landroid/content/Intent;
    const-string v2, "com.htc.AutoMotive"

    const-string v3, "com.htc.AutoMotive.soundenhancersetting.SoundEnhancerSet"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2244
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2245
    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2249
    .end local v1           #soundEffectIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 2246
    :catch_0
    move-exception v0

    .line 2247
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "Cannot found com.htc.AutoMotive.soundenhancersetting.SoundEnhancerSet"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onHandleNonUIGetTrackInfo()V
    .locals 21

    .prologue
    .line 1998
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 1999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mQueueSize:I

    .line 2000
    const-string v2, "[CarNowPlayingActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queueSize = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mQueueSize:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 2002
    .local v16, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mQueueSize:I

    if-nez v2, :cond_1

    .line 2003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2141
    .end local v16           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2007
    .restart local v16       #path:Ljava/lang/String;
    :cond_1
    new-instance v20, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;

    const/4 v2, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;Lcom/htc/music/carmode/CarNowPlayingActivity$1;)V

    .line 2008
    .local v20, trackInfo:Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;
    if-eqz v16, :cond_e

    .line 2009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    .line 2010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    .line 2011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    .line 2012
    const-string v2, "<unknown>"

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2013
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    .line 2016
    :cond_2
    const-string v2, "<unknown>"

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2017
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    .line 2020
    :cond_3
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    if-nez v2, :cond_d

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    if-nez v2, :cond_d

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 2022
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "updateTrackInfoP - get metadata from MediaMetadataRetriever"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    new-instance v13, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2026
    .local v13, mmr:Landroid/media/MediaMetadataRetriever;
    if-eqz v13, :cond_4

    .line 2028
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 2030
    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    .line 2033
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    .line 2035
    const/4 v2, 0x7

    invoke-virtual {v13, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2042
    :goto_1
    :try_start_2
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2043
    const/4 v13, 0x0

    .line 2048
    :cond_4
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2049
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    .line 2051
    :cond_5
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2052
    :cond_6
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    .line 2054
    :cond_7
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 2055
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    .line 2057
    :cond_8
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2058
    :cond_9
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    .line 2060
    :cond_a
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 2061
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    .line 2063
    :cond_b
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2065
    :cond_c
    const-string v2, "/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2066
    const/4 v14, -0x1

    .local v14, nBegin:I
    const/4 v15, -0x1

    .line 2068
    .local v15, nEnd:I
    const-string v2, "/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 2069
    const-string v2, "."

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 2071
    if-ltz v14, :cond_d

    if-le v15, v14, :cond_d

    .line 2072
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    .line 2129
    .end local v13           #mmr:Landroid/media/MediaMetadataRetriever;
    .end local v14           #nBegin:I
    .end local v15           #nEnd:I
    :cond_d
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v20

    iput v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mQueuePos:I

    .line 2130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mQueueSize:I

    .line 2131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTotalTime:J

    .line 2132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 2133
    .local v19, refreshMsg:Landroid/os/Message;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2136
    .end local v16           #path:Ljava/lang/String;
    .end local v19           #refreshMsg:Landroid/os/Message;
    .end local v20           #trackInfo:Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;
    :catch_0
    move-exception v11

    .line 2137
    .local v11, ex:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 2138
    .end local v11           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    throw v2

    .line 2037
    .restart local v13       #mmr:Landroid/media/MediaMetadataRetriever;
    .restart local v16       #path:Ljava/lang/String;
    .restart local v20       #trackInfo:Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;
    :catch_1
    move-exception v11

    .line 2038
    .local v11, ex:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v2, "[CarNowPlayingActivity]"

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

    goto/16 :goto_1

    .line 2080
    .end local v11           #ex:Ljava/lang/RuntimeException;
    .end local v13           #mmr:Landroid/media/MediaMetadataRetriever;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v18

    .line 2081
    .local v18, queue:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v17

    .line 2082
    .local v17, position:I
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    array-length v2, v0

    if-lez v2, :cond_0

    if-ltz v17, :cond_0

    move-object/from16 v0, v18

    array-length v2, v0

    move/from16 v0, v17

    if-le v2, v0, :cond_0

    .line 2088
    const/4 v2, 0x5

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

    .line 2096
    .local v4, cursorCols:[Ljava/lang/String;
    aget v2, v18, v17

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 2097
    .local v12, id:Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static/range {v2 .. v7}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2101
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_f

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_10

    .line 2102
    :cond_f
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "Cannot find cursor in update Track"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2105
    :cond_10
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2106
    const-string v2, "artist"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2108
    .local v9, artistName:Ljava/lang/String;
    if-eqz v9, :cond_11

    const-string v2, "<unknown>"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2109
    :cond_11
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2111
    :cond_12
    const-string v2, "[CarNowPlayingActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artistName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    move-object/from16 v0, v20

    iput-object v9, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    .line 2113
    const-string v2, "album"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2115
    .local v8, albumName:Ljava/lang/String;
    if-eqz v8, :cond_13

    const-string v2, "<unknown>"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2116
    :cond_13
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2118
    :cond_14
    move-object/from16 v0, v20

    iput-object v8, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    .line 2119
    const-string v2, "title"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    .line 2122
    const-string v2, "[CarNowPlayingActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTrackName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    if-eqz v10, :cond_d

    .line 2125
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2
.end method

.method private onServiceConnectedHandle()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 1068
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "onServiceConnectedHandle + "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackInfo()V

    .line 1070
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updatePlayState()V

    .line 1071
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateTrackTime()V

    .line 1072
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateShuffletState()V

    .line 1073
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->updateRepeatState()V

    .line 1075
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1080
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->animationRefresh()V

    .line 1084
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "onServiceConnectedHandle - "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    return-void
.end method

.method private refreshBeatsState()V
    .locals 2

    .prologue
    const/16 v1, 0x15

    .line 2205
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_1

    .line 2206
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2207
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 2208
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2210
    :cond_1
    return-void
.end method

.method private refreshGlider([II)V
    .locals 7
    .parameter "albumIdArray"
    .parameter "selectedPos"

    .prologue
    const/4 v6, 0x0

    .line 923
    const-string v3, "[CarNowPlayingActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshGlider selectedPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const-string v3, "[CarNowPlayingActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshGlider albumIdArray = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v3, :cond_1

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    const/4 v2, 0x0

    .line 929
    .local v2, nLength:I
    if-eqz p1, :cond_2

    .line 930
    array-length v2, p1

    .line 933
    :cond_2
    if-eqz p1, :cond_4

    if-lez v2, :cond_4

    .line 934
    new-array v0, v2, [Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    .line 936
    .local v0, albumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 937
    new-instance v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;

    invoke-direct {v3}, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;-><init>()V

    aput-object v3, v0, v1

    .line 938
    aget-object v3, v0, v1

    aget v4, p1, v1

    iput v4, v3, Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;->mAlbumId:I

    .line 936
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 940
    :cond_3
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v3, :cond_0

    .line 943
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v3, v0, v6, p2}, Lcom/htc/music/carmode/CarGliderAdapter;->setAlbumInfo([Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;ZI)V

    .line 953
    .end local v0           #albumInfoArray:[Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;
    .end local v1           #i:I
    :goto_2
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v3, p2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyDataSetChanged(I)V

    .line 955
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v3, :cond_0

    .line 957
    if-ltz p2, :cond_5

    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v3}, Lcom/htc/music/carmode/CarGliderAdapter;->getItemCount()I

    move-result v3

    if-ge p2, v3, :cond_5

    .line 958
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v3, p2, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 959
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v3, p2}, Lcom/htc/music/carmode/CarGliderAdapter;->onSelectionChanged(I)V

    .line 960
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v3, p2}, Lcom/htc/music/carmode/CarGliderAdapter;->requestAllBitmap(I)V

    goto :goto_0

    .line 946
    :cond_4
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v3, :cond_0

    .line 949
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6, p2}, Lcom/htc/music/carmode/CarGliderAdapter;->setAlbumInfo([Lcom/htc/music/carmode/CarGliderAdapter$AlbumInfo;ZI)V

    goto :goto_2

    .line 962
    :cond_5
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v3, v6, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 963
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v3, v6}, Lcom/htc/music/carmode/CarGliderAdapter;->onSelectionChanged(I)V

    .line 964
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v3, v6}, Lcom/htc/music/carmode/CarGliderAdapter;->requestAllBitmap(I)V

    goto :goto_0
.end method

.method private refreshRepeatButton()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    .line 1221
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 1222
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1223
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1224
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1225
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_1

    .line 1227
    :try_start_0
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "repeat_mode"

    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1234
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    return-void

    .line 1228
    .restart local v1       #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1229
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshShuffleButton()V
    .locals 5

    .prologue
    const/4 v3, 0x3

    .line 1205
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 1206
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1207
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1208
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1209
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_1

    .line 1211
    :try_start_0
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "shuffle_mode"

    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1218
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    return-void

    .line 1212
    .restart local v1       #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1213
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshTrackTime()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    .line 1867
    const/4 v0, 0x0

    .line 1868
    .local v0, elapsedTime:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1869
    .local v2, totalTime:Ljava/lang/String;
    iget-wide v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTotalTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 1870
    const-string v0, "--.--"

    .line 1871
    const-string v2, "--.--"

    .line 1876
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1877
    .local v1, time:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1878
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1879
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1880
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackTimeInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1883
    return-void

    .line 1873
    .end local v1           #time:Ljava/lang/StringBuilder;
    :cond_0
    iget-wide v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mElapsedTime:J

    div-long/2addr v3, v7

    invoke-static {p0, v3, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1874
    iget-wide v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTotalTime:J

    div-long/2addr v3, v7

    invoke-static {p0, v3, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private setPlayPauseButtonImage(Z)V
    .locals 2
    .parameter "isPlaying"

    .prologue
    .line 841
    if-eqz p1, :cond_0

    .line 842
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 846
    :goto_0
    return-void

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    goto :goto_0
.end method

.method private setRepeatButtonImage(I)V
    .locals 4
    .parameter "repeatMode"

    .prologue
    const v3, 0x7f020013

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 850
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-nez v0, :cond_0

    .line 851
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "mRepeatButton is null in setRepeatButtonImage"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :goto_0
    return-void

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 856
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 861
    packed-switch p1, :pswitch_data_0

    .line 875
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 876
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 877
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_0

    .line 863
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 864
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 865
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_0

    .line 869
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 870
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 871
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_0

    .line 861
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setShuffleButtonImage(I)V
    .locals 3
    .parameter "shuffleMode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 884
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-nez v0, :cond_0

    .line 885
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "mShuffleButton is null in setShuffleButtonImage"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :goto_0
    return-void

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 895
    packed-switch p1, :pswitch_data_0

    .line 902
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setImageResource(I)V

    .line 903
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 904
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    .line 907
    :goto_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcImageButton;->invalidate()V

    goto :goto_0

    .line 898
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 899
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_1

    .line 895
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private showToast(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 1886
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1887
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1888
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1889
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1893
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private skipAnimation()V
    .locals 3

    .prologue
    const/16 v2, 0xf

    .line 1947
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_1

    .line 1948
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 1950
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "remove NONUI_SKIP_ANIMATION"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1954
    :cond_1
    return-void
.end method

.method private startLibraryActivity()V
    .locals 3

    .prologue
    .line 2278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2279
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.music.carmode.BROWSE_VIEWER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2280
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2281
    const-string v1, "caller"

    const-class v2, Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2282
    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startActivity(Landroid/content/Intent;)V

    .line 2283
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->finish()V

    .line 2284
    return-void
.end method

.method private startNextAnimation()V
    .locals 5

    .prologue
    .line 1957
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1958
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_0

    .line 1960
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 1961
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v2

    .line 1962
    .local v2, pos:I
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 1963
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1964
    .local v0, animMsg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "album_queue_pos"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1965
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1971
    .end local v0           #animMsg:Landroid/os/Message;
    .end local v2           #pos:I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1972
    return-void

    .line 1967
    :catch_0
    move-exception v1

    .line 1968
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private startPrevAnimation()V
    .locals 6

    .prologue
    .line 1975
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1976
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_0

    .line 1978
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 1979
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v2

    .line 1980
    .local v2, pos:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueueSize()I

    move-result v3

    .line 1981
    .local v3, queueSize:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 1982
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1983
    .local v0, animMsg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "album_queue_pos"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1984
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "album_queue_size"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1985
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1992
    .end local v0           #animMsg:Landroid/os/Message;
    .end local v2           #pos:I
    .end local v3           #queueSize:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1993
    return-void

    .line 1988
    :catch_0
    move-exception v1

    .line 1989
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private toggleShuffle()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1180
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 1202
    :goto_0
    return-void

    .line 1184
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 1185
    .local v0, shuffle:I
    if-nez v0, :cond_2

    .line 1186
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1187
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1188
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1189
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshRepeatButton()V

    .line 1191
    :cond_1
    const v1, 0x7f070051

    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->showToast(I)V

    .line 1199
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshShuffleButton()V

    goto :goto_0

    .line 1200
    .end local v0           #shuffle:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1192
    .restart local v0       #shuffle:I
    :cond_2
    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    .line 1194
    :cond_3
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1195
    const v1, 0x7f070052

    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->showToast(I)V

    goto :goto_1

    .line 1197
    :cond_4
    const-string v1, "[CarNowPlayingActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid shuffle mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private updateGlider()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 915
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 920
    :cond_1
    return-void
.end method

.method private updatePlayState()V
    .locals 2

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_0

    .line 1923
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1925
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshBeatsState()V

    .line 1926
    return-void
.end method

.method private updateRepeatState()V
    .locals 2

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_0

    .line 1942
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1944
    :cond_0
    return-void
.end method

.method private updateShuffletState()V
    .locals 2

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1938
    :cond_0
    return-void
.end method

.method private updateTrackInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1159
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_1

    .line 1160
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1165
    :cond_1
    return-void
.end method

.method private updateTrackTime()V
    .locals 2

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1932
    :cond_0
    return-void
.end method


# virtual methods
.method public BTHeadSetStatusChanged(Z)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 2264
    return-void
.end method

.method public BeatsAudioStatusChanged(Z)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 2268
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshBeatsState()V

    .line 2269
    return-void
.end method

.method public getPresentation()Lcom/htc/sunny2/widget/presentation/SPresentation;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    return-object v0
.end method

.method public headSetStatusChanged(ZZ)V
    .locals 0
    .parameter "newStatus"
    .parameter "isBeatsHeadset"

    .prologue
    .line 2253
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshBeatsState()V

    .line 2254
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 2273
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startLibraryActivity()V

    .line 2275
    return-void
.end method

.method public onContainerClick(Lcom/htc/sunny2/view/SView;I)V
    .locals 0
    .parameter "clickedView"
    .parameter "nPosition"

    .prologue
    .line 1093
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "arg0"

    .prologue
    const/16 v9, 0x400

    const/16 v8, 0x8

    const v10, 0x3cf5c28f

    .line 200
    const-string v6, "[CarNowPlayingActivity]"

    const-string v7, "onCreate + "

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->requestWindowFeature(I)Z

    .line 203
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 204
    .local v4, win:Landroid/view/Window;
    invoke-virtual {v4, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 206
    const/high16 v6, 0x40

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 207
    const/high16 v6, 0x20

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 208
    const v6, 0x7f030010

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->setContentView(I)V

    .line 210
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->setVolumeControlStream(I)V

    .line 211
    const v6, 0x7f080033

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mMainLayout:Landroid/view/ViewGroup;

    .line 212
    const-string v6, "common_app_bkg"

    const v7, 0x2080001

    invoke-static {p0, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 214
    .local v0, bkgIdentifier:I
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mMainLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 215
    const v6, 0x7f080034

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;

    .line 216
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 217
    const v6, 0x7f080045

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    .line 218
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    const v7, 0x203007f

    invoke-virtual {v6, p0, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 220
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->initKeypadGestureDetector()V

    .line 222
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->initAlbumArtGestureDetector()V

    .line 223
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->initTitleBar()V

    .line 224
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->initGlider()V

    .line 225
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->initPresentation()V

    .line 226
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->initPlaybackControl()V

    .line 227
    const v6, 0x7f080044

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarNowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGesture:Landroid/view/View;

    .line 228
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtGesture:Landroid/view/View;

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 229
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "CarNowPlayingActivityWorker"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 230
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 231
    new-instance v6, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    iget-object v7, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    .line 233
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 234
    .local v1, display:Landroid/view/Display;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 235
    .local v5, windowSize:Landroid/graphics/Point;
    invoke-virtual {v1, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 236
    iget v6, v5, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const v7, 0x3e4ccccd

    mul-float/2addr v6, v7

    float-to-double v6, v6

    iput-wide v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureHeight:D

    .line 237
    const-string v6, "[CarNowPlayingActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mGestureHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureHeight:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 239
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 240
    iget v6, v3, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v6, v10

    float-to-double v6, v6

    iput-wide v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeX:D

    .line 241
    iget v6, v3, Landroid/util/DisplayMetrics;->ydpi:F

    mul-float/2addr v6, v10

    float-to-double v6, v6

    iput-wide v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeY:D

    .line 242
    iget v6, v3, Landroid/util/DisplayMetrics;->xdpi:F

    const v7, 0x3e99999a

    mul-float/2addr v6, v7

    float-to-double v6, v6

    iput-wide v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureAlbumWidth:D

    .line 243
    const-string v6, "[CarNowPlayingActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTouchRangeX = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeX:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v6, "[CarNowPlayingActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTouchRangeY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mTouchRangeY:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v6, "[CarNowPlayingActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mGestureAlbumWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureAlbumWidth:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v2, Landroid/content/IntentFilter;

    sget-object v6, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 248
    .local v2, f3:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    const-string v6, "[CarNowPlayingActivity]"

    const-string v7, "onCreate - "

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 253
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 576
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "onDestroy + "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V

    .line 581
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarGliderAdapter;->deInit()V

    .line 586
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->destroy()V

    .line 591
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 597
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    .line 600
    :cond_3
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    .line 601
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 602
    iput-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 605
    :cond_4
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 606
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 609
    :cond_5
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 610
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 613
    :cond_6
    const-string v0, "[CarNowPlayingActivity]"

    const-string v1, "onDestroy - "

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 615
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarGliderAdapter;->pauseDecoder()V

    .line 518
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 519
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGliderAdapter:Lcom/htc/music/carmode/CarGliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarGliderAdapter;->resumeDecoder()V

    .line 506
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 507
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 619
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.carmode.LOCALSEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 621
    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->startActivity(Landroid/content/Intent;)V

    .line 622
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v1

    return v1
.end method

.method public onSelectionChange(I)V
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 1101
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity$11;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1107
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 463
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "onStart + "

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v2, v3}, Lcom/htc/music/carmode/util/CarMusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 471
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 472
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 473
    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    const-string v2, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    const-string v2, "com.htc.music.rotateleft"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    const-string v2, "com.htc.music.rotateright"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    const-string v2, "com.htc.music.queuechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    const-string v2, "com.htc.music.refresh"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/carmode/CarNowPlayingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 481
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 482
    .local v1, f2:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 486
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 488
    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v2, p0, p0}, Lcom/htc/music/util/HeadSetHelper;->startMonitor(Landroid/content/Context;Lcom/htc/music/util/IMonitorHeadSetStatus;)V

    .line 490
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->animationRefresh()V

    .line 491
    invoke-direct {p0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshBeatsState()V

    .line 492
    const-string v2, "[CarNowPlayingActivity]"

    const-string v3, "onStart - "

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 494
    return-void
.end method

.method public onStateChange(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 1123
    new-instance v0, Lcom/htc/music/carmode/CarNowPlayingActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/carmode/CarNowPlayingActivity$12;-><init>(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1128
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x7

    .line 526
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v1, :cond_1

    .line 531
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v1, p0}, Lcom/htc/music/util/HeadSetHelper;->stopMonitor(Landroid/content/Context;)V

    .line 536
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mScanReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 537
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 541
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_3

    .line 542
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->activityGoSleep()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 548
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 549
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 552
    :cond_4
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    if-eqz v1, :cond_5

    .line 553
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v1, v4}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 554
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    invoke-virtual {v1, v4}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 559
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 560
    iget-boolean v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mIsSeriveBinded:Z

    if-eqz v1, :cond_6

    .line 561
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 563
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 566
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 568
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 569
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 566
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 564
    :catch_1
    move-exception v1

    .line 566
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method refreshPlaybackControl(Z)V
    .locals 3
    .parameter "isPlaying"

    .prologue
    const/4 v2, 0x2

    .line 1303
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 1304
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1305
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1306
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1307
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_playing"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1308
    iget-object v1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1310
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public wiredHeadSetStatusChanged(Z)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 2259
    return-void
.end method
