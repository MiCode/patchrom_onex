.class public Lcom/htc/music/HtcMusic;
.super Landroid/app/Activity;
.source "HtcMusic.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Lcom/htc/music/util/IMonitorHeadSetStatus;
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;
.implements Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;,
        Lcom/htc/music/HtcMusic$ControllerListener;,
        Lcom/htc/music/HtcMusic$EventReceiver;,
        Lcom/htc/music/HtcMusic$ConnectionFailDialogClickListener;,
        Lcom/htc/music/HtcMusic$ResetCurrentAlbumClickListener;,
        Lcom/htc/music/HtcMusic$UpdateCurrentAlbumClickListener;,
        Lcom/htc/music/HtcMusic$DataFeeWanringDialogClickListener;,
        Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;,
        Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;,
        Lcom/htc/music/HtcMusic$PhadeAnimationListener;,
        Lcom/htc/music/HtcMusic$NonUiHandler;,
        Lcom/htc/music/HtcMusic$EditTextWatcher;,
        Lcom/htc/music/HtcMusic$InitialUIIdlehandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_INIT:I = 0x5

.field private static final AUDIO_BOOSTER:I = 0x28

.field private static final CHANGENOW_PLAYING_VIEW:I = 0x3a9a

.field private static final CHECK_ERROR_STATE:I = 0x6

.field private static final CHECK_PLUGIN_SERVICE_STATE:I = 0x4

.field private static final DIALOG_CONNECTION_FAILED:I = 0x18

.field private static final DIALOG_CREATE_PLAYLIST:I = 0x15

.field private static final DIALOG_DMR_DISCONNECT:I = 0x16

.field private static final DIALOG_DMS_DISCONNECT:I = 0x17

.field private static final DIALOG_DOWNLOAD_ALBUMART:I = 0xd

.field private static final DIALOG_DRM_CONFIRM:I = 0x4

.field private static final DIALOG_DRM_ERROR:I = 0x3

.field private static final DIALOG_EQUALIZER_EFFECT:I = 0x11

.field private static final DIALOG_MODE_REPEAT_ALL:I = 0x0

.field private static final DIALOG_MODE_REPEAT_CURRENT:I = 0x1

.field private static final DIALOG_MODE_REPEAT_NONE:I = 0x2

.field private static final DIALOG_SET_AS_RINGTONE:I = 0x6

.field private static final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I = 0xc

.field private static final DIALOG_SHARETEXT:I = 0x14

.field private static final DIALOG_SHARETYPE:I = 0x13

.field private static final DIALOG_SHARE_DRM_FILE:I = 0xf

.field private static final DIALOG_SHARE_NORMAL_FILE:I = 0xe

.field private static final DIALOG_SOUND_EFFECT:I = 0x10

.field private static final DIALOG_TRACK_OPTIONS:I = 0x12

.field private static final DMR_CHOOSER:I = 0x25

.field public static final EQ_TOAST_HEADSET_UNPLUGGED:I = 0x34

.field private static final HANDLER_HIDE_VOLUME_DIALOG:I = 0x1771

.field private static final INITIAL_UI:I = 0xc9

.field private static final KEY_PLAY_AT_GLANCE:Ljava/lang/String; = "playatglance"

.field private static final LOCKSCREEN_START_ACTIVITY:Ljava/lang/String; = "com.htc.music.lockscreen_start"

.field private static final MENU_CLOSE_ID:I = 0x2e

.field private static final MENU_QUEUE_ID:I = 0x2c

.field private static final MENU_SOUNDHOUND_ID:I = 0x2d

.field private static final MENU_STATUS_HtcMusic:I = 0x1

.field private static final MENU_STATUS_NONE:I = 0x0

.field private static final MENU_STATUS_NowPlaying:I = 0x2

.field private static final MSG_SWITCH_MODE:I = 0x3a9b

.field public static final NOW_PLAYING_SWITCH:Ljava/lang/String; = "NOW_PLAYING_SWITCH"

.field private static final PLAY_ALBUM:I = 0xa

.field private static final PROPERTIES:I = 0x20

.field private static final QUIT:I = 0x2

.field private static final REFRESH:I = 0x1

.field private static final REFRESH_NOW:I = 0xd

.field private static final REFRESH_PLAYLIST:I = 0x1

.field public static final REFRESH_SOUND_EFFECT_LIST:I = 0x33

.field private static final REMOVE_DUMMY_BACKGROUND:I = 0x3a99

.field private static final REPEAT:I = 0x1b

.field private static final SETTING:I = 0x29

.field private static final SET_SOUND_EFFECT:I = 0x3

.field private static final SHARE:I = 0x24

.field private static final SHOW_SET_CONTACT_RINGTONE_TOAST:I = 0x66

.field private static final START_ENHANCER_SERVICE_ONSTART:I = 0x8

.field private static final TAG:Ljava/lang/String; = "[HtcMusic]"

.field private static final TOGGLE_SHUFFLE:I = 0x1f

.field private static final UPDATE_TITLE:I = 0xc

.field private static final UPDATE_TRACKINFO:I = 0x7

.field private static final UPDATE_TRACKINFO_UI:I = 0xb

.field private static final USE_AS_NOTIFY_RINGTONE:I = 0x23

.field private static final USE_AS_PHONE_RINGTONE:I = 0x22

.field private static final USE_AS_RINGTONE:I = 0x1a

.field private static final USE_AS_RINGTONE_SUB:I = 0x21

.field private static final VOLUME_DIALOG_TIMEOUT_DELAY:I = 0xbb8

.field private static music_tooltip_perference_key:Ljava/lang/String;


# instance fields
.field private LocalizedEqualizerStyle:[Ljava/lang/String;

.field private LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

.field private final MUSIC_ENHANCER_PACKAGE:Ljava/lang/String;

.field private final MUSIC_ENHANCER_SERVICE:Ljava/lang/String;

.field private SetSoundEffectKey:Ljava/lang/String;

.field private activeDialog:I

.field avi:I

.field private hint_layout_land:Landroid/view/View;

.field private isTooltipLaunched:Z

.field private final keyboard:[[I

.field private lastX:I

.field private lastY:I

.field private m2DControl:Landroid/view/View;

.field private m3DLayout:Landroid/widget/RelativeLayout;

.field private mActionBar:Lcom/htc/widget/ActionBarExt;

.field protected mActivityPopup:Z

.field private mAlbumArtistName:Landroid/widget/TextView;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

.field private mBestsStrNotBeatsHeadset:Ljava/lang/String;

.field private mBestsStrWithBeatsHeadset:Ljava/lang/String;

.field private mBlockMenu:Z

.field mCircleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mControllerListener:Lcom/htc/music/HtcMusic$ControllerListener;

.field private mCurrentAudioId:I

.field private mCurrentAudioPath:Ljava/lang/String;

.field private mCurrentAudioType:I

.field private mCurrentSoundEffectIndicatorType:I

.field private mCurrentTime:Landroid/widget/TextView;

.field private mCustomContainer:Lcom/htc/widget/ActionBarContainer;

.field private mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

.field private mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

.field private mDLNAServiceStatusListener:Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;

.field private mDMCServiceListener:Landroid/content/BroadcastReceiver;

.field private mDMRChooserAction:Landroid/view/View$OnClickListener;

.field private mDelayPlayDuration:I

.field private mDirectMode:I

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDlArtReceiver:Landroid/content/BroadcastReceiver;

.field private mDlnaMode:I

.field private mDownloadAlbumArtDialog:Landroid/app/Dialog;

.field private mDownloadAlbumArtId:I

.field private mDuration:J

.field private mEQDialog:Lcom/htc/widget/HtcAlertDialog;

.field mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

.field private mEnalbeAutoPlay:Z

.field private mEnalbeDelayPlay:Z

.field private mEventReceiver:Landroid/content/BroadcastReceiver;

.field private mFfwdListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

.field private mGliderAdapter:Lcom/htc/music/GliderAdapter;

.field private mGliderState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

.field private mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

.field private mHtcTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

.field private mInitAP:Z

.field private mIsDLNAManagerConnected:Z

.field private mIsDialogActive:Z

.field private mIsEnhancerExist:Z

.field private mIsFFScanOn:Z

.field private mIsFromBTKeepPlaying:Z

.field private mIsMusicStoreEnable:Z

.field private mIsPlaybackControlEnabled:Z

.field private mIsRWScanOn:Z

.field private mIsSeriveBinded:Z

.field private mIsSupportMMC:Z

.field private mJustCreate:Z

.field private mLastPluginArtPath:Ljava/lang/String;

.field private mLastSeekEventTime:J

.field private mLibraryListener:Landroid/view/View$OnClickListener;

.field private mMenu:Landroid/view/Menu;

.field private mMenuStatus:I

.field public mMsg:Ljava/lang/String;

.field private mNeedBindSerive:Z

.field private mNeedSetRendererAsDongle:Z

.field private mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

.field mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

.field protected mNowPlayingViewOn:Z

.field private mOrientation:I

.field private mPauseButton:Lcom/htc/widget/HtcRimImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPaused:Z

.field private mPosOverride:J

.field private mPreferences:Landroid/content/SharedPreferences;

.field public mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

.field private mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Lcom/htc/widget/HtcSeekBar;

.field private mProgressPopup:Landroid/widget/TextView;

.field private mProgressPos:I

.field private mQueueInfo:Ljava/lang/String;

.field private mRecommendListener:Landroid/view/View$OnClickListener;

.field private mRelaunchAfterConfigChange:Z

.field private mRepeatButton:Lcom/htc/widget/HtcImageButton;

.field private mRepeatListener:Landroid/view/View$OnClickListener;

.field private mRetryCount:I

.field private mRewListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

.field mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

.field protected mScanListener:Landroid/content/BroadcastReceiver;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field private mSecondary:Landroid/widget/TextView;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mSeekmethod:I

.field public mSelectEQIndex:I

.field public mService:Lcom/htc/music/IMediaPlaybackService;

.field private mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mShareDRMDialog:Landroid/app/Dialog;

.field private mShareNormaldialog:Landroid/app/Dialog;

.field private mShareText:Ljava/lang/String;

.field mShowDialog:Z

.field private mShowEmptyQueue:Z

.field private mShuffleButton:Lcom/htc/widget/HtcImageButton;

.field private mShuffleListener:Landroid/view/View$OnClickListener;

.field private mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

.field private mSoundEffectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mSoundEffectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/util/SoundEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

.field public mSoundEffectStyles:[Ljava/lang/String;

.field private mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mSoundHoundIntent:Landroid/content/Intent;

.field private mStartActionFinished:Z

.field private mStartSeekPos:J

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mSupportSoundHound:Z

.field public mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

.field private mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

.field protected mTempSelectedEQIndex:I

.field private mTempSelectedSoundEffectStyle:Ljava/lang/String;

.field private mTempShowingEQIndex:I

.field private mTextDialog:Landroid/app/Dialog;

.field private mTitle:Lcom/htc/widget/ActionBarText;

.field private mToast:Landroid/widget/Toast;

.field private mTooltipListener:Landroid/view/View$OnClickListener;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTrackName:Landroid/widget/TextView;

.field private mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

.field private mTrackOptionListener:Landroid/view/View$OnClickListener;

.field private mTrackball:Z

.field private mUINotInit:Z

.field mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

.field mVolumeDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mVolumeListener:Landroid/view/View$OnClickListener;

.field mVolumeSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private music_tooltip_preference:Landroid/content/SharedPreferences;

.field private nowHWAudioSetting:Ljava/lang/String;

.field private osc:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 232
    const-string v0, "music_tooltip_perference_key"

    sput-object v0, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 150
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 162
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    .line 166
    iput v4, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 167
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    .line 168
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    .line 169
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 171
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 173
    iput v4, p0, Lcom/htc/music/HtcMusic;->mProgressPos:I

    .line 174
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 175
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 176
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    .line 178
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 182
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsSupportMMC:Z

    .line 184
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsMusicStoreEnable:Z

    .line 185
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 186
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    .line 187
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    .line 188
    iput v2, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    .line 189
    iput v4, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    .line 190
    iput v4, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    .line 194
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    .line 195
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    .line 196
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 199
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z

    .line 200
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsRWScanOn:Z

    .line 223
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mProgressPopup:Landroid/widget/TextView;

    .line 225
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    .line 233
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    .line 238
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 239
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 240
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 242
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    .line 243
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    .line 244
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mBlockMenu:Z

    .line 245
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    .line 246
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeDelayPlay:Z

    .line 247
    const/16 v0, 0x15e

    iput v0, p0, Lcom/htc/music/HtcMusic;->mDelayPlayDuration:I

    .line 257
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    .line 260
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    .line 261
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    .line 262
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    .line 265
    iput v4, p0, Lcom/htc/music/HtcMusic;->mScreenWidth:I

    .line 266
    iput v4, p0, Lcom/htc/music/HtcMusic;->mScreenHeight:I

    .line 274
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 275
    new-instance v0, Lcom/htc/music/HtcMusic$ControllerListener;

    invoke-direct {v0, p0, v3}, Lcom/htc/music/HtcMusic$ControllerListener;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mControllerListener:Lcom/htc/music/HtcMusic$ControllerListener;

    .line 276
    new-instance v0, Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;

    invoke-direct {v0, p0, v3}, Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDLNAServiceStatusListener:Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;

    .line 277
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsDLNAManagerConnected:Z

    .line 278
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    .line 279
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 280
    new-instance v0, Lcom/htc/music/HtcMusic$1;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$1;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHtcTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 395
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    .line 396
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    .line 397
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    .line 398
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTextDialog:Landroid/app/Dialog;

    .line 400
    iput v5, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 404
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mShowEmptyQueue:Z

    .line 407
    const-string v0, "com.htc.musicenhancer"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->MUSIC_ENHANCER_PACKAGE:Ljava/lang/String;

    .line 408
    const-string v0, "com.htc.musicenhancer.EnhancerService"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->MUSIC_ENHANCER_SERVICE:Ljava/lang/String;

    .line 411
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mIsPlaybackControlEnabled:Z

    .line 413
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 417
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    .line 419
    new-instance v0, Lcom/htc/music/HtcMusic$2;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$2;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 430
    new-instance v0, Lcom/htc/music/HtcMusic$3;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$3;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 611
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    .line 612
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mVolumeSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 705
    new-instance v0, Lcom/htc/music/HtcMusic$6;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$6;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mVolumeDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 1135
    new-instance v0, Lcom/htc/music/HtcMusic$7;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$7;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1237
    new-instance v0, Lcom/htc/music/HtcMusic$8;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$8;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleListener:Landroid/view/View$OnClickListener;

    .line 1247
    new-instance v0, Lcom/htc/music/HtcMusic$9;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$9;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatListener:Landroid/view/View$OnClickListener;

    .line 1253
    new-instance v0, Lcom/htc/music/HtcMusic$10;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$10;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 1259
    new-instance v0, Lcom/htc/music/HtcMusic$11;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$11;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTooltipListener:Landroid/view/View$OnClickListener;

    .line 1274
    new-instance v0, Lcom/htc/music/HtcMusic$12;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$12;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mVolumeListener:Landroid/view/View$OnClickListener;

    .line 1304
    new-instance v0, Lcom/htc/music/HtcMusic$13;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$13;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mLibraryListener:Landroid/view/View$OnClickListener;

    .line 1372
    new-instance v0, Lcom/htc/music/HtcMusic$14;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$14;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRecommendListener:Landroid/view/View$OnClickListener;

    .line 1378
    new-instance v0, Lcom/htc/music/HtcMusic$15;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$15;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 1408
    new-instance v0, Lcom/htc/music/HtcMusic$16;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$16;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mNextListener:Landroid/view/View$OnClickListener;

    .line 1436
    new-instance v0, Lcom/htc/music/HtcMusic$17;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$17;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRewListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    .line 1458
    new-instance v0, Lcom/htc/music/HtcMusic$18;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$18;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mFfwdListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    .line 1487
    new-instance v0, Lcom/htc/music/HtcMusic$19;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$19;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackOptionListener:Landroid/view/View$OnClickListener;

    .line 1539
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    .line 1540
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    .line 1750
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mStartActionFinished:Z

    .line 1981
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mJustCreate:Z

    .line 1982
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mUINotInit:Z

    .line 2180
    iput v4, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    .line 2233
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    .line 2503
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z

    .line 2856
    const/4 v0, 0x3

    new-array v0, v0, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    new-array v2, v6, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->keyboard:[[I

    .line 2937
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 2995
    iput v4, p0, Lcom/htc/music/HtcMusic;->avi:I

    .line 3380
    new-instance v0, Lcom/htc/music/HtcMusic$22;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$22;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->osc:Landroid/content/ServiceConnection;

    .line 3920
    new-instance v0, Lcom/htc/music/HtcMusic$23;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$23;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    .line 4071
    new-instance v0, Lcom/htc/music/HtcMusic$24;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$24;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDMCServiceListener:Landroid/content/BroadcastReceiver;

    .line 4214
    new-instance v0, Lcom/htc/music/HtcMusic$25;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$25;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 4523
    new-instance v0, Lcom/htc/music/HtcMusic$26;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$26;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    .line 4569
    new-instance v0, Lcom/htc/music/HtcMusic$27;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$27;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mCircleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4854
    new-instance v0, Lcom/htc/music/HtcMusic$28;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$28;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 5619
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    .line 5620
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    .line 6286
    new-instance v0, Lcom/htc/music/HtcMusic$41;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$41;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDMRChooserAction:Landroid/view/View$OnClickListener;

    .line 6310
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    .line 6311
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    .line 6316
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    .line 6318
    const-string v0, "SoundStyle"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->SetSoundEffectKey:Ljava/lang/String;

    .line 6322
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    .line 6327
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6328
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6330
    new-instance v0, Lcom/htc/music/util/HeadSetHelper;

    invoke-direct {v0}, Lcom/htc/music/util/HeadSetHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    .line 6331
    new-instance v0, Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-direct {v0}, Lcom/htc/music/util/HdmiPlugReceiver;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    .line 6333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    .line 6334
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    .line 6335
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    .line 6337
    new-instance v0, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    .line 6353
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mBestsStrWithBeatsHeadset:Ljava/lang/String;

    .line 6354
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mBestsStrNotBeatsHeadset:Ljava/lang/String;

    .line 6983
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    .line 6984
    iput v5, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    .line 7291
    iput v4, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    .line 7292
    iput v5, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    .line 7540
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    .line 8024
    new-instance v0, Lcom/htc/music/HtcMusic$53;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$53;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    return-void

    .line 2856
    :array_0
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x36t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$1000(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/htc/music/HtcMusic;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->toggleShuffle()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->cycleRepeat()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doPauseResume()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    return p1
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->music_tooltip_preference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/HtcMusic;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/htc/music/HtcMusic;->launchDMR(IZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/music/HtcMusic;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->createVolumeDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/music/HtcMusic;)Lcom/htc/wrap/android/media/HtcWrapAudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startBrowserTabActivity()V

    return-void
.end method

.method static synthetic access$2502(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsRWScanOn:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->stopFFRWScan(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2702(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->showSetContactRingtoneToast()V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->handleTVReadyToPlay()V

    return-void
.end method

.method static synthetic access$3002(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->onServiceConnectedHandle()V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initialUI()V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/music/HtcMusic;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/music/HtcMusic;)Lcom/htc/music/widget/SoundEffectAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput p1, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    return p1
.end method

.method static synthetic access$3700(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->changeNowPlayingMode()V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/music/HtcMusic;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    return v0
.end method

.method static synthetic access$4600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    return-void
.end method

.method static synthetic access$4800(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/music/HtcMusic;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    return-void
.end method

.method static synthetic access$5000(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mUINotInit:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$5200(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/ActionBarText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->setSecondaryTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->resetTimeout()V

    return-void
.end method

.method static synthetic access$6000(Lcom/htc/music/HtcMusic;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->onAnimationRotateSelf(Z)V

    return-void
.end method

.method static synthetic access$6100(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateGlider()V

    return-void
.end method

.method static synthetic access$6200(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->getAlbumQueuePosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6400(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->handleDMCError(I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->setRepeatMode(I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    return-void
.end method

.method static synthetic access$6700(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/htc/music/HtcMusic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/HtcMusic;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    return-wide v0
.end method

.method static synthetic access$7000(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->shareMusicFile()V

    return-void
.end method

.method static synthetic access$702(Lcom/htc/music/HtcMusic;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    return-wide p1
.end method

.method static synthetic access$7100(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->startAlbumDetail(I)V

    return-void
.end method

.method static synthetic access$7200(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->addtoPlaylist()V

    return-void
.end method

.method static synthetic access$7300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doSearch()V

    return-void
.end method

.method static synthetic access$7400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->chooseShareType()V

    return-void
.end method

.method static synthetic access$7500(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRingtone()V

    return-void
.end method

.method static synthetic access$7600(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    return v0
.end method

.method static synthetic access$7700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    return v0
.end method

.method static synthetic access$7802(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput p1, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    return p1
.end method

.method static synthetic access$7808(Lcom/htc/music/HtcMusic;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    return v0
.end method

.method static synthetic access$7900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$7902(Lcom/htc/music/HtcMusic;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/htc/music/HtcMusic;->mProgressPos:I

    return v0
.end method

.method static synthetic access$8000(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->SetSoundEffectKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput p1, p0, Lcom/htc/music/HtcMusic;->mProgressPos:I

    return p1
.end method

.method static synthetic access$8100(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->showHideOneShotMode()V

    return-void
.end method

.method static synthetic access$8200(Lcom/htc/music/HtcMusic;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mShowEmptyQueue:Z

    return v0
.end method

.method static synthetic access$8400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTrackInfoP()V

    return-void
.end method

.method static synthetic access$8500(Lcom/htc/music/HtcMusic;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/util/SoundEffectItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    return-object v0
.end method

.method static synthetic access$8602(Lcom/htc/music/HtcMusic;Lcom/htc/music/util/SoundEffectItem;)Lcom/htc/music/util/SoundEffectItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    return-object p1
.end method

.method static synthetic access$8700(Lcom/htc/music/HtcMusic;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8800(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    return v0
.end method

.method static synthetic access$8802(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput p1, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    return p1
.end method

.method static synthetic access$8900(Lcom/htc/music/HtcMusic;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startAutoDownloadAlbum()V

    return-void
.end method

.method static synthetic access$9100(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->autoUpdateAlbumArt(I)V

    return-void
.end method

.method static synthetic access$9200(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->stopDownloadAlbumArtService()V

    return-void
.end method

.method static synthetic access$9300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startUpdateAllAlbum()V

    return-void
.end method

.method static synthetic access$9400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateCurrentAlbum()V

    return-void
.end method

.method static synthetic access$9500(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->resetCurrentAlbumArt()V

    return-void
.end method

.method static synthetic access$9602(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsDLNAManagerConnected:Z

    return p1
.end method

.method static synthetic access$9700(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    return v0
.end method

.method static synthetic access$9702(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    return p1
.end method

.method static synthetic access$9800(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->closeDMC()V

    return-void
.end method

.method private addtoPlaylist()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2733
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 2735
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 2736
    const/16 v2, 0x15

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 2747
    :goto_0
    return-void

    .line 2739
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2740
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2741
    const-string v2, "pickermode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2742
    new-array v0, v4, [I

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v3

    aput v3, v0, v2

    .line 2743
    .local v0, addToPlaylistData:[I
    const-string v2, "AddToPlaylistData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2745
    invoke-virtual {p0, v1, v4}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private animationRefresh()V
    .locals 5

    .prologue
    .line 3766
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3767
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3768
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3769
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3777
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 3772
    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->activityWakeup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3776
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateGlider()V

    goto :goto_0

    .line 3773
    :catch_0
    move-exception v0

    .line 3774
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private attachNowPlayingView()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 5692
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5696
    .local v2, nowPlayingLayoutparams:Landroid/widget/RelativeLayout$LayoutParams;
    const v3, 0x7f080068

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5697
    .local v0, glanceContainer:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 5698
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v3}, Lcom/htc/music/NowPlayingViewHelper;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 5699
    .local v1, nowPlaying:Landroid/view/ViewGroup;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5700
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 5702
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v3, :cond_0

    .line 5703
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setVisibility(Z)V

    .line 5705
    .end local v1           #nowPlaying:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private autoUpdateAlbumArt(I)V
    .locals 4
    .parameter "isChecked"

    .prologue
    .line 7500
    const-string v2, "[HtcMusic]"

    const-string v3, "autoUpdateAlbumArt"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7501
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7502
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 7503
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "auto_download"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7504
    sget-object v2, Lcom/htc/musicenhancer/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 7505
    return-void
.end method

.method private buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "szExtra"

    .prologue
    .line 4193
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    .line 4194
    .local v2, szTitleInfo:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 4195
    .local v1, nDlnaMode:I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 4196
    :cond_0
    if-nez p1, :cond_2

    .line 4199
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getPlayerName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getPlayerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4211
    :cond_1
    :goto_0
    return-object v2

    .line 4201
    :catch_0
    move-exception v0

    .line 4202
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4206
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4209
    :cond_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    goto :goto_0
.end method

.method private canUseAsRingtone(IZ)Z
    .locals 7
    .parameter "audioType"
    .parameter "onErrorToast"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4901
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    iget v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->checkSizeLimit(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4903
    if-eqz p2, :cond_0

    .line 4904
    const v4, 0x7f0700ae

    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 4939
    :cond_0
    :goto_0
    return v3

    .line 4909
    :cond_1
    const/4 v2, 0x0

    .line 4910
    .local v2, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4913
    iget v5, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v5}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 4914
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 4916
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 4917
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4920
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4921
    const-string v5, "mime_type"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4923
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4928
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_3
    if-eqz p1, :cond_4

    if-ne p1, v4, :cond_7

    :cond_4
    move v0, v4

    .line 4931
    .local v0, canUseAsRingtone:Z
    :goto_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 4932
    if-eqz v0, :cond_5

    .line 4933
    const-string v5, "audio/x-wma-drm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move v0, v4

    .line 4936
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    .line 4937
    const v3, 0x7f0700af

    invoke-direct {p0, v3}, Lcom/htc/music/HtcMusic;->showToast(I)V

    :cond_6
    move v3, v0

    .line 4939
    goto :goto_0

    .end local v0           #canUseAsRingtone:Z
    :cond_7
    move v0, v3

    .line 4928
    goto :goto_1

    .restart local v0       #canUseAsRingtone:Z
    :cond_8
    move v0, v3

    .line 4933
    goto :goto_2
.end method

.method private changeNowPlayingMode()V
    .locals 1

    .prologue
    .line 1497
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 1498
    return-void

    .line 1497
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private chooseShareType()V
    .locals 1

    .prologue
    .line 2771
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 2772
    return-void
.end method

.method private cleanMessage()V
    .locals 2

    .prologue
    .line 4848
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4849
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4851
    :cond_0
    return-void
.end method

.method private clearSoundEffectParameters()V
    .locals 1

    .prologue
    .line 6812
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 6813
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6814
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    .line 6815
    return-void
.end method

.method private closeDMC()V
    .locals 3

    .prologue
    .line 1502
    const-string v1, "[HtcMusic]"

    const-string v2, "DMC power off"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 1507
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1508
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 1520
    :goto_0
    return-void

    .line 1510
    :cond_0
    const-string v1, "[HtcMusic]"

    const-string v2, "Current mode is not dmc or push mode, cancel close dmc"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1517
    :catch_0
    move-exception v0

    .line 1518
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1513
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    const-string v1, "[HtcMusic]"

    const-string v2, "service is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private createConnectionFailDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 7856
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7857
    .local v2, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x204009d

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7858
    new-instance v0, Lcom/htc/music/HtcMusic$ConnectionFailDialogClickListener;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$ConnectionFailDialogClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    .line 7859
    .local v0, clickListener:Lcom/htc/music/HtcMusic$ConnectionFailDialogClickListener;
    const v3, 0x2040178

    invoke-virtual {v2, v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7860
    const v3, 0x2040152

    new-instance v4, Lcom/htc/music/HtcMusic$52;

    invoke-direct {v4, p0}, Lcom/htc/music/HtcMusic$52;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7867
    const v3, 0x204009e

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7868
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 7869
    .local v1, dialog:Landroid/app/Dialog;
    return-object v1
.end method

.method private createDownloadAlbumArtDialog()Landroid/app/Dialog;
    .locals 14

    .prologue
    .line 7430
    const/4 v9, 0x0

    .line 7431
    .local v9, dialog:Landroid/app/Dialog;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7432
    .local v0, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f03001c

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 7434
    .local v1, dialogView:Landroid/view/View;
    const v2, 0x7f0700ed

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7435
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7436
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7437
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7438
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v9

    .line 7440
    const v2, 0x7f08005d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListItem;

    .line 7442
    .local v6, autoUpdate:Lcom/htc/widget/HtcListItem;
    const-string v2, "list_selector_background"

    const-string v3, "com.htc.R.drawable.list_selector_background"

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcListItem;->setBackgroundResource(I)V

    .line 7445
    const v2, 0x7f080024

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItem2LineText;

    .line 7447
    .local v7, autoUpdateTextView:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 7448
    const v2, 0x7f0700ee

    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 7449
    const v2, 0x7f080060

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcCheckBox;

    .line 7451
    .local v8, checkBox:Lcom/htc/widget/HtcCheckBox;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 7452
    new-instance v2, Lcom/htc/music/HtcMusic$50;

    invoke-direct {v2, p0, v8}, Lcom/htc/music/HtcMusic$50;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7470
    const v2, 0x7f08005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcListItem;

    .line 7472
    .local v10, updateAllAlbum:Lcom/htc/widget/HtcListItem;
    const-string v2, "list_selector_background"

    const-string v3, "com.htc.R.drawable.list_selector_background"

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcListItem;->setBackgroundResource(I)V

    .line 7475
    const v2, 0x7f080024

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/htc/widget/HtcListItem2LineText;

    .line 7477
    .local v11, updateAllAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 7478
    const v2, 0x7f0700f1

    invoke-virtual {v11, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 7479
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcListItem;->setClickable(Z)V

    .line 7480
    new-instance v2, Lcom/htc/music/HtcMusic$51;

    invoke-direct {v2, p0}, Lcom/htc/music/HtcMusic$51;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7487
    const v2, 0x7f08005f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/htc/widget/HtcListItem;

    .line 7489
    .local v12, updateCurrAlbum:Lcom/htc/widget/HtcListItem;
    const-string v2, "list_selector_background"

    const-string v3, "com.htc.R.drawable.list_selector_background"

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/htc/widget/HtcListItem;->setBackgroundResource(I)V

    .line 7492
    const v2, 0x7f080024

    invoke-virtual {v12, v2}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcListItem2LineText;

    .line 7494
    .local v13, updateCurrAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 7495
    const v2, 0x7f0700f0

    invoke-virtual {v13, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 7496
    return-object v9
.end method

.method private createEqualizerDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 7297
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7300
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 7302
    .local v1, resource:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7306
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    new-instance v4, Lcom/htc/music/HtcMusic$46;

    invoke-direct {v4, p0}, Lcom/htc/music/HtcMusic$46;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7319
    const v2, 0x2040151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$47;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$47;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7337
    const v2, 0x2040152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$48;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$48;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7348
    new-instance v2, Lcom/htc/music/HtcMusic$49;

    invoke-direct {v2, p0}, Lcom/htc/music/HtcMusic$49;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7357
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 7360
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v2
.end method

.method private createSoundEffectDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 7068
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 7069
    const-string v2, "[HtcMusic]"

    const-string v4, "createSoundEffectDialog, mService is null."

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 7255
    :goto_0
    return-object v2

    .line 7073
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 7076
    .local v9, resource:Landroid/content/res/Resources;
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAudioEffect()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7084
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7085
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7087
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 7088
    .local v7, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f030056

    invoke-virtual {v7, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 7091
    .local v1, textEntryView:Landroid/view/View;
    const v3, 0x7f0800ae

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 7094
    .local v8, list:Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initializeSoundEffectDialog()V

    .line 7096
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    if-nez v3, :cond_1

    .line 7097
    new-instance v3, Lcom/htc/music/widget/SoundEffectAdapter;

    const v4, 0x7f030055

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5}, Lcom/htc/music/widget/SoundEffectAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    .line 7101
    :cond_1
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    invoke-virtual {v8, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7103
    new-instance v3, Lcom/htc/music/HtcMusic$42;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$42;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v8, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move v3, v2

    move v4, v2

    move v5, v2

    .line 7161
    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7163
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7164
    new-instance v2, Lcom/htc/music/HtcMusic$43;

    invoke-direct {v2, p0}, Lcom/htc/music/HtcMusic$43;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7174
    const v2, 0x2040151

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$44;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$44;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7237
    const v2, 0x2040152

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$45;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$45;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7249
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 7251
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setOnSoundEffectDismissListener(Landroid/app/Dialog;)V

    .line 7255
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 7077
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #textEntryView:Landroid/view/View;
    .end local v7           #factory:Landroid/view/LayoutInflater;
    .end local v8           #list:Landroid/widget/ListView;
    :catch_0
    move-exception v6

    .line 7078
    .local v6, e:Landroid/os/RemoteException;
    const-string v2, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSoundEffectDialog, RemoteException, e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 7081
    goto/16 :goto_0
.end method

.method private createVolumeDialog()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const-wide v11, 0x3fc53f7ced916873L

    const/4 v10, 0x0

    .line 615
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    if-nez v7, :cond_0

    .line 616
    new-instance v7, Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    .line 619
    :cond_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07018c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setTextViewText(ILjava/lang/String;)V

    .line 622
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v7, v10}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v7

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 623
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mVolumeSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v7, v10, v8}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setSeekbarSeekListener(ILandroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 624
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v7, v13}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setCanceledOnTouchOutside(Z)V

    .line 625
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mVolumeDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 627
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 628
    .local v6, windowSize:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 629
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v7, v10}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v4

    .line 630
    .local v4, view:Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 631
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 634
    .local v0, config:Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v13, :cond_1

    .line 635
    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-double v7, v7

    mul-double/2addr v7, v11

    double-to-int v7, v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 640
    :goto_0
    const/4 v5, 0x0

    .line 642
    .local v5, volume:I
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 646
    :goto_1
    if-nez v5, :cond_3

    .line 647
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "com.android.internal.R.drawable.zzzz_icon_launcher_profile_silent"

    invoke-static {v8}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 649
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 650
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v7, v10, v1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 663
    :goto_2
    new-instance v7, Lcom/htc/music/HtcMusic$5;

    invoke-direct {v7, p0}, Lcom/htc/music/HtcMusic$5;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 701
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcMultiSeekBarDialog;->showByGravity(I)V

    .line 702
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->resetTimeout()V

    .line 703
    return-void

    .line 637
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #volume:I
    :cond_1
    iget v7, v6, Landroid/graphics/Point;->y:I

    int-to-double v7, v7

    mul-double/2addr v7, v11

    double-to-int v7, v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 643
    .restart local v5       #volume:I
    :catch_0
    move-exception v2

    .line 644
    .local v2, ex:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 652
    .end local v2           #ex:Landroid/os/RemoteException;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "com.android.internal.R.drawable.zzzz_ic_lock_silent_mode"

    invoke-static {v9}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 655
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "com.android.internal.R.drawable.zzzz_icon_launcher_sound_display"

    invoke-static {v8}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 657
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 658
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v7, v10, v1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 660
    :cond_4
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "com.android.internal.R.drawable.zzzz_ic_lock_silent_mode_off"

    invoke-static {v9}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private cycleRepeat()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 3251
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 3274
    :goto_0
    return-void

    .line 3255
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    .line 3256
    .local v0, mode:I
    if-nez v0, :cond_1

    .line 3257
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 3258
    const v1, 0x7f070055

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 3270
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    goto :goto_0

    .line 3271
    .end local v0           #mode:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3259
    .restart local v0       #mode:I
    :cond_1
    if-ne v0, v2, :cond_3

    .line 3260
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 3261
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 3262
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 3263
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 3265
    :cond_2
    const v1, 0x7f070054

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_1

    .line 3267
    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 3268
    const v1, 0x7f070053

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private detachNowPlayingView()V
    .locals 3

    .prologue
    .line 5708
    const v2, 0x7f080068

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5709
    .local v0, glanceContainer:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 5710
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 5712
    .local v1, nowPlayingIndex:I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 5715
    .end local v1           #nowPlayingIndex:I
    :cond_0
    return-void
.end method

.method private doPauseResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 3188
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_0

    .line 3189
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3190
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 3191
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    .line 3192
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    .line 3211
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 3215
    :cond_0
    :goto_1
    return-void

    .line 3194
    :cond_1
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3197
    .local v0, isMirrorPlayOnTV:Z
    :goto_2
    if-eqz v0, :cond_3

    .line 3198
    const-string v3, "[HtcMusic]"

    const-string v4, "doPauseResume TV is on"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3199
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->handleTVReadyToPlay()V

    goto :goto_1

    .line 3213
    .end local v0           #isMirrorPlayOnTV:Z
    :catch_0
    move-exception v3

    goto :goto_1

    :cond_2
    move v0, v3

    .line 3194
    goto :goto_2

    .line 3203
    .restart local v0       #isMirrorPlayOnTV:Z
    :cond_3
    const-string v3, "[HtcMusic]"

    const-string v4, "doPauseResume TV is off"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3204
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 3205
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    .line 3206
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v1

    .line 3207
    .local v1, next:J
    invoke-direct {p0, v1, v2}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private doSearch()V
    .locals 2

    .prologue
    .line 2750
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    return-void
.end method

.method private doStart()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1752
    const-string v5, "[HtcMusic]"

    const-string v6, "[HtcMusic][doStart Begin]"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    iget-boolean v5, p0, Lcom/htc/music/HtcMusic;->mStartActionFinished:Z

    if-eqz v5, :cond_0

    .line 1834
    :goto_0
    return-void

    .line 1754
    :cond_0
    iput-boolean v9, p0, Lcom/htc/music/HtcMusic;->mStartActionFinished:Z

    .line 1758
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1759
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_1

    .line 1760
    const-string v5, "directmode"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 1761
    const-string v5, "[HtcMusic]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get intent directmode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    :cond_1
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v5, :cond_2

    .line 1765
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 1767
    :cond_2
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1768
    iput-boolean v9, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    .line 1769
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1771
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1772
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    .line 1777
    :cond_3
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1778
    .local v2, f2:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1779
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1780
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1781
    const-string v5, "file"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1782
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1784
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1785
    .local v1, f:Landroid/content/IntentFilter;
    const-string v5, "com.htc.music.playstatechanged"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1786
    const-string v5, "com.htc.music.metachanged"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1787
    const-string v5, "com.htc.music.playbackcomplete"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1788
    const-string v5, "com.htc.music.rotateleft"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1789
    const-string v5, "com.htc.music.rotateright"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1790
    const-string v5, "com.htc.music.rotatecircle_next"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1791
    const-string v5, "com.htc.music.rotatecircle_previous"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1792
    const-string v5, "com.htc.music.rotatequickly"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1793
    const-string v5, "com.htc.music.queuechanged"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1794
    const-string v5, "com.htc.music.shuffle"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1795
    const-string v5, "com.htc.music.refresh"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1796
    const-string v5, "com.htc.music.changeart"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1797
    const-string v5, "com.htc.music.onerror"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1798
    const-string v5, "com.broadcom.bluetooth.avrcp"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1799
    const-string v5, "com.htc.music.pluginservicebinded"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1800
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v5, v6}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1802
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1803
    .local v3, fDMCSvc:Landroid/content/IntentFilter;
    const-string v5, "com.htc.music.dmcservice.released"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1804
    const-string v5, "com.htc.music.dmcservice.set_playback_control_enabled"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1805
    const-string v5, "com.htc.music.dmcservice.repeat_changed"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1806
    const-string v5, "com.htc.music.dmcservice.shuffle_changed"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1807
    const-string v5, "com.htc.music.dmcservice.dlna_connected"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1808
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDMCServiceListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1810
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1811
    .local v0, dlArtFilter:Landroid/content/IntentFilter;
    const-string v5, "action_complete_one_download"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1812
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1814
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    .line 1815
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1817
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isConnectionFail(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1818
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_4

    .line 1819
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1823
    :cond_4
    iget-boolean v5, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v5, :cond_5

    .line 1824
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v5}, Lcom/htc/music/NowPlayingViewHelper;->onStart()V

    .line 1828
    :cond_5
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1829
    invoke-static {p0}, Lcom/htc/music/util/ScreenStatus;->registerReceiver(Landroid/app/Activity;)V

    .line 1832
    :cond_6
    const-string v5, "[HtcMusic]"

    const-string v6, "[HtcMusic][doStart End]"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getAlbumQueuePosition()I
    .locals 3

    .prologue
    .line 4840
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4843
    :goto_0
    return v1

    .line 4841
    :catch_0
    move-exception v0

    .line 4842
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "[HtcMusic]"

    const-string v2, " getAlbumQueuePosition() : "

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4843
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private handleDMCError(I)V
    .locals 3
    .parameter "errorId"

    .prologue
    const/16 v1, 0x18

    const/4 v2, 0x1

    .line 7796
    packed-switch p1, :pswitch_data_0

    .line 7845
    const-string v0, "[HtcMusic]"

    const-string v1, "handle dmc error - unknown error"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7846
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    .line 7852
    :goto_0
    return-void

    .line 7798
    :pswitch_0
    const v0, 0x7f070068

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7799
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto :goto_0

    .line 7804
    :pswitch_1
    const v0, 0x7f0700df

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7805
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto :goto_0

    .line 7810
    :pswitch_2
    const v0, 0x7f0700e0

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_0

    .line 7815
    :pswitch_3
    const v0, 0x7f0700d5

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7816
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto :goto_0

    .line 7821
    :pswitch_4
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isConnectionFail(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7822
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 7824
    :cond_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 7830
    :pswitch_5
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isConnectionFail(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7831
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 7833
    :cond_1
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 7839
    :pswitch_6
    const v0, 0x7f0700de

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7840
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto :goto_0

    .line 7796
    :pswitch_data_0
    .packed-switch -0x2717
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleTVReadyToPlay()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 8062
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v5, :cond_0

    .line 8098
    :goto_0
    return-void

    .line 8066
    :cond_0
    const/4 v1, 0x0

    .line 8067
    .local v1, isDMCOrPush:Z
    const/4 v2, 0x0

    .line 8069
    .local v2, isQueueEmpty:Z
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v1

    .line 8070
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 8071
    .local v4, queueLength:I
    if-gtz v4, :cond_1

    .line 8072
    const/4 v2, 0x1

    .line 8078
    .end local v4           #queueLength:I
    :cond_1
    :goto_1
    const-string v5, "[HtcMusic]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleTVReadyToPlay, isDMCOrPush: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8080
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 8081
    iget-boolean v5, p0, Lcom/htc/music/HtcMusic;->mIsDLNAManagerConnected:Z

    if-nez v5, :cond_2

    .line 8082
    iput-boolean v9, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    .line 8083
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mDLNAServiceStatusListener:Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;

    invoke-virtual {v5, v6}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->connect(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z

    goto :goto_0

    .line 8074
    :catch_0
    move-exception v0

    .line 8075
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 8085
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    new-instance v3, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v3}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    .line 8086
    .local v3, notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    iput v9, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 8087
    const-string v5, "com.htc.music.PLAYBACK_VIEWER"

    iput-object v5, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 8088
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701d1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 8089
    const-string v5, "HtcMusic"

    iput-object v5, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 8091
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v5, v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    .line 8093
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    goto :goto_0

    .line 8096
    .end local v3           #notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :cond_3
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    goto :goto_0
.end method

.method private initConstant()V
    .locals 3

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 852
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 853
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 854
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/htc/music/HtcMusic;->mScreenWidth:I

    .line 855
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/htc/music/HtcMusic;->mScreenHeight:I

    .line 865
    return-void
.end method

.method private initGlider()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 841
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-nez v0, :cond_0

    .line 842
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 843
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 845
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 846
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 848
    :cond_0
    return-void
.end method

.method private initPlayerInfo()V
    .locals 8

    .prologue
    .line 914
    const v3, 0x7f080014

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    .line 915
    const v3, 0x7f080015

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    .line 917
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 919
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f080037

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    .line 920
    const v3, 0x7f080038

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    .line 922
    const v3, 0x7f080056

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRimImageButton;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    .line 924
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v3, :cond_0

    .line 925
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v4, "common_b_circle_outer"

    const v5, 0x2080007

    invoke-static {p0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "common_b_circle_pressed"

    const v6, 0x2080008

    invoke-static {p0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "common_b_circle_rest"

    const v7, 0x2080009

    invoke-static {p0, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 929
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    const v4, 0x7f020026

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 930
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mTrackOptionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 933
    :cond_0
    const v3, 0x7f08006d

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcSeekBar;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    .line 934
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030052

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 935
    .local v1, popupContent:Landroid/view/View;
    const v3, 0x7f0800aa

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mProgressPopup:Landroid/widget/TextView;

    .line 936
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;-><init>(Landroid/content/Context;)V

    .line 937
    .local v0, mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBarPopupWindowListener;
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->setContentView(Landroid/view/View;)V

    .line 938
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcSeekBar;->setHtcSeekBarPopupWindowListener(Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;)V

    .line 939
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 941
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    .line 942
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcSeekBar;->setDisplayMode(I)V

    .line 945
    const v3, 0x7f080069

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    .line 946
    return-void
.end method

.method private initPresentation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 873
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-nez v0, :cond_0

    .line 911
    :goto_0
    return-void

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v0, :cond_1

    .line 883
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 885
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SSurfaceView;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 887
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAlpha(I)V

    .line 888
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setEdgeItemScrollRatio(F)V

    .line 889
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnSelectionChangeListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;)V

    .line 890
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnStateListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;)V

    .line 891
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledReflection(Z)V

    .line 892
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setShiftOneItemMode(Z)V

    .line 894
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-nez v0, :cond_2

    .line 904
    new-instance v0, Lcom/htc/music/GliderAdapter;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/GliderAdapter;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    .line 906
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V

    .line 907
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnLayoutListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;)V

    goto :goto_0

    .line 909
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/GliderAdapter;->reload()V

    goto :goto_0
.end method

.method private initSoundEnhancer()V
    .locals 2

    .prologue
    .line 1130
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v0, v1}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    .line 1133
    return-void
.end method

.method private initTaskbar()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x104

    const v8, 0x2080016

    const v7, 0x2080015

    const v6, 0x2080014

    const/4 v5, 0x0

    .line 951
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/RepeatingImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    .line 954
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    if-nez v0, :cond_0

    .line 955
    const-string v0, "[HtcMusic]"

    const-string v1, "can;t find task_bar_imgbtn_2 is our glance layout!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 961
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    const v1, 0x20800c0

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RepeatingImageButton;->setIconResource(I)V

    .line 962
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    const-string v1, "common_b_transport_outer"

    invoke-static {p0, v1, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "common_b_transport_pressed"

    invoke-static {p0, v2, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "common_b_transport_rest"

    invoke-static {p0, v3, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/widget/RepeatingImageButton;->setButtonBackgroundResource(III)V

    .line 969
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableFfRw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 970
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRewListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v1, v9, v10}, Lcom/htc/music/widget/RepeatingImageButton;->setRepeatListener(Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;J)V

    .line 974
    :cond_1
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    .line 975
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v1, "common_b_transport_large_outer"

    const-string v2, "com.htc.R.drawable.common_b_transport_large_outer"

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "common_b_transport_large_pressed"

    const-string v3, "com.htc.R.drawable.common_b_transport_large_pressed"

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "common_b_transport_large_rest"

    const-string v4, "com.htc.R.drawable.common_b_transport_large_rest"

    invoke-static {v4}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 979
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcRimImageButton;->requestFocus()Z

    .line 980
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 982
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/RepeatingImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    .line 985
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    if-nez v0, :cond_2

    .line 986
    const-string v0, "[HtcMusic]"

    const-string v1, "can;t find task_bar_imgbtn_4 is our glance layout!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 992
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    const v1, 0x20800b4

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RepeatingImageButton;->setIconResource(I)V

    .line 993
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    const-string v1, "common_b_transport_outer"

    invoke-static {p0, v1, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "common_b_transport_pressed"

    invoke-static {p0, v2, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "common_b_transport_rest"

    invoke-static {p0, v3, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/widget/RepeatingImageButton;->setButtonBackgroundResource(III)V

    .line 1000
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableFfRw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1001
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mFfwdListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v1, v9, v10}, Lcom/htc/music/widget/RepeatingImageButton;->setRepeatListener(Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;J)V

    .line 1005
    :cond_3
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    .line 1006
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v0, :cond_4

    .line 1007
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mShuffleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1008
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcImageButton;->setFocusable(Z)V

    .line 1009
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 1014
    :goto_0
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    .line 1015
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v0, :cond_5

    .line 1016
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRepeatListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1017
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcImageButton;->setFocusable(Z)V

    .line 1018
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 1022
    :goto_1
    return-void

    .line 1011
    :cond_4
    const-string v0, "[HtcMusic]"

    const-string v1, "initRightpanel, mShuffleButton is null."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1020
    :cond_5
    const-string v0, "[HtcMusic]"

    const-string v1, "initRightpanel, mRepeatButton is null."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initTitleBar()V
    .locals 2

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 1050
    :goto_0
    return-void

    .line 1032
    :cond_0
    new-instance v0, Lcom/htc/widget/ActionBarText;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    .line 1034
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 1035
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 1037
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    .line 1043
    const-string v0, " "

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->setSecondaryTitle(Ljava/lang/String;)V

    .line 1047
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 1048
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLibraryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initToolTip()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1094
    sget-object v3, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    invoke-virtual {p0, v3, v7}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->music_tooltip_preference:Landroid/content/SharedPreferences;

    .line 1098
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->music_tooltip_preference:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsSupportMMC:Z

    if-nez v3, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 1102
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isMusicStoreEnabled(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsMusicStoreEnable:Z

    .line 1103
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsMusicStoreEnable:Z

    if-nez v3, :cond_0

    .line 1104
    iput-boolean v7, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    .line 1108
    :cond_0
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    if-nez v3, :cond_1

    .line 1109
    const v3, 0x7f08006f

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 1110
    .local v2, hit_stub:Landroid/view/ViewStub;
    invoke-virtual {v2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1112
    const/4 v0, 0x0

    .line 1113
    .local v0, hint_toast_library:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 1114
    .local v1, hint_toast_playlisy:Landroid/widget/TextView;
    const v3, 0x7f080070

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    .line 1115
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1116
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    const v3, 0x7f080075

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #hint_toast_library:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 1118
    .restart local v0       #hint_toast_library:Landroid/widget/TextView;
    const v3, 0x7f0700c3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1119
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTooltipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1120
    const v3, 0x7f080076

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #hint_toast_playlisy:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 1121
    .restart local v1       #hint_toast_playlisy:Landroid/widget/TextView;
    const v3, 0x7f0700c4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1122
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTooltipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1123
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/16 v6, 0x12c

    invoke-static {v3, v4, v5, v7, v6}, Lcom/htc/music/util/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)V

    .line 1127
    .end local v0           #hint_toast_library:Landroid/widget/TextView;
    .end local v1           #hint_toast_playlisy:Landroid/widget/TextView;
    .end local v2           #hit_stub:Landroid/view/ViewStub;
    :cond_1
    return-void
.end method

.method private initialUI()V
    .locals 11

    .prologue
    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 1984
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-nez v7, :cond_0

    .line 1985
    const-string v7, "[HtcMusic]"

    const-string v8, "mNonUiHandler is null, this means activity should be destroyed!! return directly"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    :goto_0
    return-void

    .line 1990
    :cond_0
    const v7, 0x7f080068

    invoke-virtual {p0, v7}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1991
    .local v2, mainContainer:Landroid/view/View;
    if-nez v2, :cond_1

    .line 1992
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1993
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v7, 0x7f030027

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1994
    const v7, 0x7f080033

    invoke-virtual {p0, v7}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1995
    .local v0, group:Landroid/view/ViewGroup;
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2001
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initConstant()V

    .line 2002
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPresentation()V

    .line 2003
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPlayerInfo()V

    .line 2005
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTaskbar()V

    .line 2006
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTitleBar()V

    .line 2007
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initToolTip()V

    .line 2010
    .end local v0           #group:Landroid/view/ViewGroup;
    .end local v1           #inflator:Landroid/view/LayoutInflater;
    :cond_1
    const/16 v7, 0x12

    iput v7, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    .line 2012
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    .line 2013
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2015
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    .line 2016
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 2017
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 2018
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 2020
    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mUINotInit:Z

    .line 2021
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->onServiceConnectedHandle()V

    .line 2023
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v3

    .line 2024
    .local v3, next:J
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v7, :cond_2

    .line 2026
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2027
    invoke-direct {p0, v3, v4}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2032
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v7, :cond_3

    .line 2033
    new-instance v5, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v5}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 2034
    .local v5, phadeIn:Lcom/htc/sunny2/view/animation/SAnimationController;
    new-instance v6, Lcom/htc/music/HtcMusic$PhadeAnimationListener;

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-direct {v6, v7, v8, v9}, Lcom/htc/music/HtcMusic$PhadeAnimationListener;-><init>(Lcom/htc/sunny2/view/SView;Landroid/os/Handler;Z)V

    .line 2035
    .local v6, phadeInAnimation:Lcom/htc/music/HtcMusic$PhadeAnimationListener;
    invoke-virtual {v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 2036
    const/16 v7, 0xff

    invoke-virtual {v5, v10, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 2037
    const-wide/16 v7, 0x12c

    invoke-virtual {v5, v7, v8}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 2039
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v7, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 2042
    .end local v5           #phadeIn:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v6           #phadeInAnimation:Lcom/htc/music/HtcMusic$PhadeAnimationListener;
    :cond_3
    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/16 v9, 0x12c

    invoke-static {v2, v7, v8, v10, v9}, Lcom/htc/music/util/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)V

    goto/16 :goto_0

    .line 2028
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private initializeSoundEffectDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 6818
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->initializeSoundEffectStyles()V

    .line 6820
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6824
    const/4 v2, 0x0

    .line 6825
    .local v2, item:Lcom/htc/music/util/SoundEffectItem;
    const-string v3, ""

    .line 6826
    .local v3, seStyle:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_2

    .line 6827
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v6, v0

    .line 6829
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6830
    new-instance v2, Lcom/htc/music/util/SoundEffectItem;

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    invoke-direct {v2, v3}, Lcom/htc/music/util/SoundEffectItem;-><init>(Ljava/lang/String;)V

    .line 6845
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectIconResourceId(ILandroid/content/Context;)I

    move-result v6

    iput v6, v2, Lcom/htc/music/util/SoundEffectItem;->mEffectIconResId:I

    .line 6849
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6826
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6832
    :cond_0
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v6, v0, :cond_1

    .line 6835
    new-instance v2, Lcom/htc/music/util/SoundEffectItem;

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    invoke-direct {v2, v3}, Lcom/htc/music/util/SoundEffectItem;-><init>(Ljava/lang/String;)V

    .line 6836
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v6, v6, v8

    iput-object v6, v2, Lcom/htc/music/util/SoundEffectItem;->mEqualizerStyle:Ljava/lang/String;

    .line 6837
    iput-boolean v9, v2, Lcom/htc/music/util/SoundEffectItem;->mNeedButton:Z

    .line 6838
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    invoke-virtual {v2, v6}, Lcom/htc/music/util/SoundEffectItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 6840
    :cond_1
    new-instance v2, Lcom/htc/music/util/SoundEffectItem;

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    invoke-direct {v2, v3}, Lcom/htc/music/util/SoundEffectItem;-><init>(Ljava/lang/String;)V

    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    goto :goto_1

    .line 6858
    .end local v0           #i:I
    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    .end local v3           #seStyle:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v6, v7}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v4

    .line 6861
    .local v4, selectedStyleIndex:I
    const/4 v2, 0x0

    .line 6863
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 6864
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v1

    .line 6881
    .local v1, isBeatHeadset:Z
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_14

    .line 6882
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    check-cast v2, Lcom/htc/music/util/SoundEffectItem;

    .line 6884
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    if-ne v4, v0, :cond_6

    .line 6885
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    if-eqz v6, :cond_3

    .line 6886
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    invoke-virtual {v6, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6889
    :cond_3
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6890
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    .line 6895
    :goto_3
    if-eqz v1, :cond_8

    .line 6897
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_4

    .line 6898
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mBestsStrWithBeatsHeadset:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/htc/music/util/SoundEffectItem;->setText(Ljava/lang/String;)V

    .line 6900
    :cond_4
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    if-eq v0, v6, :cond_5

    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_7

    .line 6902
    :cond_5
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    .line 6881
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6892
    :cond_6
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    goto :goto_3

    .line 6904
    :cond_7
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_4

    .line 6907
    :cond_8
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_9

    .line 6908
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mBestsStrNotBeatsHeadset:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/htc/music/util/SoundEffectItem;->setText(Ljava/lang/String;)V

    .line 6910
    :cond_9
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    if-eq v0, v6, :cond_a

    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_b

    .line 6912
    :cond_a
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_4

    .line 6914
    :cond_b
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_4

    .line 6918
    .end local v0           #i:I
    .end local v1           #isBeatHeadset:Z
    :cond_c
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_13

    .line 6919
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    check-cast v2, Lcom/htc/music/util/SoundEffectItem;

    .line 6920
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    if-eqz v6, :cond_f

    .line 6921
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    iget-object v7, v2, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 6922
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    if-eqz v6, :cond_d

    .line 6923
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    invoke-virtual {v6, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6926
    :cond_d
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6927
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    .line 6945
    :goto_6
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    if-ne v0, v6, :cond_12

    .line 6946
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    .line 6918
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 6929
    :cond_e
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    goto :goto_6

    .line 6932
    :cond_f
    if-ne v4, v0, :cond_11

    .line 6933
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    if-eqz v6, :cond_10

    .line 6934
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    invoke-virtual {v6, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6937
    :cond_10
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6938
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    goto :goto_6

    .line 6940
    :cond_11
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    goto :goto_6

    .line 6948
    :cond_12
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_7

    .line 6952
    :cond_13
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentEqualizerStyleIndex(Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    .line 6955
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    sget v7, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/util/SoundEffectItem;

    .line 6957
    .local v5, soundEQItem:Lcom/htc/music/util/SoundEffectItem;
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    sget v7, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    aget-object v6, v6, v7

    iput-object v6, v5, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    .line 6959
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    if-eqz v6, :cond_17

    .line 6960
    const/4 v6, -0x1

    iget v7, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    if-ne v6, v7, :cond_16

    .line 6961
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/htc/music/util/SoundEffectItem;->setEqualizerStyle(Ljava/lang/String;)V

    .line 6963
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;->setSelectedIndex(I)V

    .line 6964
    iget v6, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    iput v6, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    .line 6975
    :goto_8
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    .line 6978
    .end local v5           #soundEQItem:Lcom/htc/music/util/SoundEffectItem;
    :cond_14
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    if-eqz v6, :cond_15

    .line 6979
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    invoke-virtual {v6}, Lcom/htc/music/widget/SoundEffectAdapter;->notifyDataSetChanged()V

    .line 6981
    :cond_15
    return-void

    .line 6966
    .restart local v5       #soundEQItem:Lcom/htc/music/util/SoundEffectItem;
    :cond_16
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/htc/music/util/SoundEffectItem;->setEqualizerStyle(Ljava/lang/String;)V

    .line 6968
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;->setSelectedIndex(I)V

    goto :goto_8

    .line 6971
    :cond_17
    const-string v6, "[HtcMusic]"

    const-string v7, "initializeSoundEffectDialog(), LocalizedEqualizerStylesFromDevice is null"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private launchDMR(IZ)V
    .locals 4
    .parameter "directMode"
    .parameter "autoSearch"

    .prologue
    .line 1337
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1339
    .local v1, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 1340
    const-string v2, "com.htc.dmc.ACTION_AUTO_SEARCH_RENDERER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1341
    const-string v2, "cookie"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1348
    :goto_0
    const-string v2, "directmode"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1351
    const/16 v2, 0x25

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    :goto_1
    return-void

    .line 1344
    :cond_0
    const-string v2, "com.htc.dmc"

    const-string v3, "com.htc.dmc.DmrListActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1345
    const-string v2, "cookie"

    const-string v3, "HtcMusic"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[HtcMusic]"

    const-string v3, "launchDMR, start DMR list activity fail"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private launchGlobalSoundEffectSetting()V
    .locals 3

    .prologue
    .line 6987
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6988
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6989
    const v1, 0x2040255

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 6990
    const-string v1, "[HtcMusic]"

    const-string v2, "launchGlobalSoundEffectSetting, Beats do not support HDMI out."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7001
    :goto_0
    return-void

    .line 6993
    :cond_0
    const v1, 0x7f0700a3

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 6994
    const-string v1, "[HtcMusic]"

    const-string v2, "launchGlobalSoundEffectSetting, Beats do not support Speaker out."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6999
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.HtcSoundEnhancerSetting.ShowSettingPage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7000
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private launchProperty()V
    .locals 2

    .prologue
    .line 2824
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 2825
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2827
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2828
    const-class v1, Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2829
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 2834
    :goto_0
    return-void

    .line 2831
    :cond_0
    const-class v1, Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2832
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private localizeEqualizerStyle([Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "eqStyles"

    .prologue
    const/4 v11, 0x0

    .line 7364
    if-nez p1, :cond_0

    .line 7365
    const-string v10, "[HtcMusic]"

    const-string v11, "localizeEqualizerStyles, eqStyles should not be null!"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7366
    const/4 p1, 0x0

    .line 7404
    .end local p1
    :goto_0
    return-object p1

    .line 7369
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 7370
    .local v8, resource:Landroid/content/res/Resources;
    const v10, 0x7f060019

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 7373
    .local v2, eqStylesFromRes:[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 7374
    const-string v10, "[HtcMusic]"

    const-string v11, "localizeEqualizerStyles, eqStylesFromRes should not be null!"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7379
    :cond_1
    sget-object v10, Lcom/htc/music/util/SoundEffectHelper;->EQStylesNotFromDevice:[Ljava/lang/String;

    array-length v5, v10

    .line 7380
    .local v5, iEQNotFromDeviceSize:I
    array-length v4, p1

    .line 7381
    .local v4, iEQFromDeviceSize:I
    add-int v1, v4, v5

    .line 7383
    .local v1, eqStyleNum:I
    new-array v7, v1, [Ljava/lang/String;

    .line 7384
    .local v7, localizedEQStyles:[Ljava/lang/String;
    new-array v9, v1, [Ljava/lang/String;

    .line 7385
    .local v9, totalEQ:[Ljava/lang/String;
    invoke-static {p1, v11, v9, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7386
    sget-object v10, Lcom/htc/music/util/SoundEffectHelper;->EQStylesNotFromDevice:[Ljava/lang/String;

    invoke-static {v10, v11, v9, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7388
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 7389
    const/4 v0, -0x1

    .line 7390
    .local v0, correspondingPos:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    sget-object v10, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    array-length v10, v10

    if-ge v6, v10, :cond_2

    .line 7391
    sget-object v10, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    aget-object v10, v10, v6

    aget-object v11, v9, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 7392
    move v0, v6

    .line 7393
    aget-object v10, v2, v6

    aput-object v10, v7, v3

    .line 7388
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7396
    :cond_3
    const/4 v10, -0x1

    if-ne v0, v10, :cond_4

    .line 7397
    const-string v10, "[HtcMusic]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "localizeEqualizerStyles, no match, eqStyles["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v9, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7399
    aget-object v10, v9, v3

    aput-object v10, v7, v3

    .line 7390
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v0           #correspondingPos:I
    .end local v6           #j:I
    :cond_5
    move-object p1, v7

    .line 7404
    goto :goto_0
.end method

.method private onActionMenuSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2398
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    move v5, v6

    .line 2450
    :goto_0
    return v5

    .line 2401
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->closeDMC()V

    goto :goto_0

    .line 2405
    :sswitch_1
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    .line 2406
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3a9a

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2408
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->changeNowPlayingMode()V

    goto :goto_0

    .line 2420
    :sswitch_2
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    if-nez v7, :cond_1

    .line 2421
    const-string v7, "[HtcMusic]"

    const-string v8, "mSoundHoundIntent is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2422
    goto :goto_0

    .line 2425
    :cond_1
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2426
    :catch_0
    move-exception v2

    .line 2427
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "[HtcMusic]"

    const-string v7, "can\'t find SoundHound activity!!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2432
    .end local v2           #e:Ljava/lang/Exception;
    :sswitch_3
    new-array v1, v5, [Ljava/lang/String;

    .line 2433
    .local v1, dataPathArray:[Ljava/lang/String;
    iget v7, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v7}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v0

    .line 2434
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 2435
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2436
    const-string v7, "_data"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 2437
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2438
    const/4 v0, 0x0

    .line 2440
    :cond_2
    new-instance v4, Ljava/lang/String;

    const-string v6, "com.htc.vmm.service.VMMEngineService"

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2442
    .local v4, szAction:Ljava/lang/String;
    :try_start_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "upload"

    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2443
    :catch_1
    move-exception v3

    .line 2445
    .local v3, ex:Ljava/lang/SecurityException;
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "We do not have permission to start the service :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2398
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_3
        0x2c -> :sswitch_1
        0x2d -> :sswitch_2
        0x2e -> :sswitch_0
    .end sparse-switch
.end method

.method private onAnimationRotateSelf(Z)V
    .locals 4
    .parameter "bNext"

    .prologue
    .line 4547
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    .line 4567
    :goto_0
    return-void

    .line 4551
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4553
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    .line 4556
    :cond_1
    iget v2, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 4557
    .local v0, bAnimated:Z
    :goto_1
    if-nez v0, :cond_3

    .line 4558
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 4559
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4564
    .end local v0           #bAnimated:Z
    :catch_0
    move-exception v1

    .line 4565
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4556
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 4562
    .restart local v0       #bAnimated:Z
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 4563
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getSelection()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->rotateSelf(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private onCreateActionMenu(Landroid/view/Menu;)V
    .locals 9
    .parameter "menu"

    .prologue
    const/16 v8, 0x2c

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2236
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2237
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 2269
    :cond_0
    :goto_0
    return-void

    .line 2239
    :cond_1
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    .line 2241
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.soundhound.android.ID_NOW_EXTERNAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    .line 2242
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const/high16 v3, 0x1400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2243
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const-string v3, "com.soundhound.android.EXTRA_ID_NOW_TOKEN"

    const-string v4, "htc"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2244
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const-string v3, "com.melodis.midomiMusicIdentifier"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2245
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    invoke-static {p0, v2}, Lcom/htc/music/util/CustomizeSetting;->isStorePackageExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    .line 2246
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    if-nez v2, :cond_2

    .line 2247
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const-string v3, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2248
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    invoke-static {p0, v2}, Lcom/htc/music/util/CustomizeSetting;->isStorePackageExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    .line 2250
    :cond_2
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    if-eqz v2, :cond_3

    .line 2251
    const/16 v2, 0x2d

    const v3, 0x7f0701d0

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02003c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2256
    :cond_3
    const v2, 0x7f0700f4

    invoke-interface {p1, v5, v8, v7, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02002b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2258
    .local v1, queue:Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    if-nez v2, :cond_4

    .line 2259
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 2262
    :cond_4
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2263
    const/16 v2, 0x2e

    const v3, 0x7f0700f5

    invoke-interface {p1, v5, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x20800a3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0
.end method

.method private onPrepareActionMenu(Landroid/view/Menu;)V
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2272
    const/16 v3, 0x2c

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2273
    .local v2, queue:Landroid/view/MenuItem;
    if-nez v2, :cond_1

    .line 2274
    const-string v3, "[HtcMusic]"

    const-string v4, "can\'t find queue menu item!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    :cond_0
    :goto_0
    return-void

    .line 2278
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 2279
    .local v1, dlnaMode:I
    if-nez v1, :cond_4

    .line 2280
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v3, :cond_3

    .line 2281
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2289
    :goto_1
    const/16 v3, 0x2e

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2290
    .local v0, close:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 2291
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    .line 2293
    :cond_2
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2283
    .end local v0           #close:Landroid/view/MenuItem;
    :cond_3
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2286
    :cond_4
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2295
    .restart local v0       #close:Landroid/view/MenuItem;
    :cond_5
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private onServiceConnectedHandle()V
    .locals 23

    .prologue
    .line 3458
    const-string v20, "[HtcMusic]"

    const-string v21, "onServiceConnectedHandle() + "

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 3644
    :cond_0
    :goto_0
    return-void

    .line 3460
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mUINotInit:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 3462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 3463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 3466
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 3467
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->initSoundEnhancer()V

    .line 3471
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 3472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 3478
    :cond_4
    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->checkDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    .line 3481
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 3485
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 3486
    const-string v20, "[HtcMusic]"

    const-string v21, "Enter DirectMode ..."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3488
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic;->launchDMR(IZ)V

    .line 3490
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 3491
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 3492
    .local v12, intent:Landroid/content/Intent;
    if-eqz v12, :cond_6

    .line 3493
    const-string v20, "directmode"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3500
    .end local v12           #intent:Landroid/content/Intent;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mInitAP:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 3501
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 3564
    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 3565
    .local v13, intent1:Landroid/content/Intent;
    const-string v10, ""

    .line 3566
    .local v10, filename:Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 3567
    .local v19, uri:Landroid/net/Uri;
    const/4 v14, 0x0

    .line 3568
    .local v14, isDRM:Z
    if-eqz v19, :cond_c

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_c

    .line 3569
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    .line 3570
    .local v18, scheme:Ljava/lang/String;
    const-string v20, "file"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 3571
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 3573
    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/htc/music/util/DrmUtils;->DRMV2_VerifyRights(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v7

    .line 3575
    .local v7, drmValidRights:Z
    if-nez v7, :cond_a

    .line 3576
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto/16 :goto_0

    .line 3496
    .end local v7           #drmValidRights:Z
    .end local v10           #filename:Ljava/lang/String;
    .end local v13           #intent1:Landroid/content/Intent;
    .end local v14           #isDRM:Z
    .end local v18           #scheme:Ljava/lang/String;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_8
    const-string v20, "[HtcMusic]"

    const-string v21, "Not DirectMode, normal ..."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3504
    :pswitch_0
    :try_start_0
    const-string v20, "DLNA"

    const/16 v21, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 3506
    .local v17, pref:Landroid/content/SharedPreferences;
    const-string v20, "content"

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3507
    .local v5, content:Ljava/lang/String;
    const-string v20, "switchLocal"

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 3511
    .local v4, bSwitch:Z
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_7

    if-eqz v5, :cond_7

    .line 3512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 3513
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 3514
    .local v11, index:I
    const-string v20, "[HtcMusic]"

    const-string v21, "DLNA_LOCAL mode"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3515
    const-string v20, "[HtcMusic]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "index from DMC = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lcom/htc/music/IMediaPlaybackService;->setQueuePosition(I)V

    .line 3518
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "content"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "switchLocal"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3520
    const-string v20, "[HtcMusic]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "update index to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 3523
    .end local v4           #bSwitch:Z
    .end local v5           #content:Ljava/lang/String;
    .end local v11           #index:I
    .end local v17           #pref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v8

    .line 3524
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 3529
    .end local v8           #e:Landroid/os/RemoteException;
    :pswitch_1
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->switchToDMP(Z)V

    goto/16 :goto_2

    .line 3534
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 3536
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v20

    if-nez v20, :cond_7

    .line 3537
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->switchToPUSH(Landroid/content/Context;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 3539
    :catch_1
    move-exception v8

    .line 3540
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v20, "[HtcMusic]"

    const-string v21, "DLNA_PUSH RemoteException in mService.isDmcOrPushMode()"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3541
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 3545
    .end local v8           #e:Landroid/os/RemoteException;
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 3547
    const/16 v20, 0x0

    :try_start_2
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    .line 3548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v20

    if-nez v20, :cond_7

    .line 3549
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->switchToDMC(Landroid/content/Context;Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 3551
    :catch_2
    move-exception v8

    .line 3552
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v20, "[HtcMusic]"

    const-string v21, "DLNA_DMC RemoteException in mService.isDmcOrPushMode()"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3553
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 3581
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v10       #filename:Ljava/lang/String;
    .restart local v13       #intent1:Landroid/content/Intent;
    .restart local v14       #isDRM:Z
    .restart local v18       #scheme:Ljava/lang/String;
    .restart local v19       #uri:Landroid/net/Uri;
    :cond_9
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3589
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 3590
    .local v6, curPath:Ljava/lang/String;
    if-eqz v6, :cond_b

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 3591
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/HtcMusic;->mActivityPopup:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 3597
    .end local v6           #curPath:Ljava/lang/String;
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    .line 3598
    if-eqz v10, :cond_c

    const-string v20, "content://drm/"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 3599
    const/4 v14, 0x1

    .line 3605
    .end local v18           #scheme:Ljava/lang/String;
    :cond_c
    if-eqz v14, :cond_10

    .line 3606
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    move/from16 v20, v0

    if-nez v20, :cond_f

    if-eqz v19, :cond_f

    .line 3607
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->checkDrmFile(Landroid/net/Uri;)V

    .line 3620
    :cond_d
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->showHideOneShotMode()V

    .line 3622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    .line 3623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 3643
    :cond_e
    :goto_5
    const-string v20, "[HtcMusic]"

    const-string v21, "onServiceConnectedHandle() - "

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3593
    .restart local v18       #scheme:Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 3594
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 3609
    .end local v8           #e:Ljava/lang/Exception;
    .end local v18           #scheme:Ljava/lang/String;
    :cond_f
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    .line 3611
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v15

    .line 3613
    .local v15, next:J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 3614
    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    .line 3615
    :catch_4
    move-exception v9

    .line 3616
    .local v9, ex:Ljava/lang/Exception;
    const-string v20, "[HtcMusic]"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isDRM... Exception: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3627
    .end local v9           #ex:Ljava/lang/Exception;
    .end local v15           #next:J
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    .line 3637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    .line 3638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 3639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 3501
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private queryUpdateAlbumArtSetting()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 7508
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7509
    .local v0, resolver:Landroid/content/ContentResolver;
    new-array v2, v7, [Ljava/lang/String;

    const-string v1, "auto_download"

    aput-object v1, v2, v8

    .line 7510
    .local v2, mSettingColumns:[Ljava/lang/String;
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7513
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7514
    const-string v1, "auto_download"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    move v1, v7

    .line 7518
    :goto_0
    return v1

    :cond_0
    move v1, v8

    .line 7514
    goto :goto_0

    :cond_1
    move v1, v8

    .line 7518
    goto :goto_0
.end method

.method private queueNextRefresh(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 3844
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    if-nez v1, :cond_0

    .line 3845
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 3846
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3847
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3848
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3851
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private recoverNoEffectWithHDMI()V
    .locals 5

    .prologue
    .line 6768
    const/4 v1, 0x0

    .line 6771
    .local v1, recoverOriginal:Z
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6772
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 6773
    const/4 v1, 0x1

    .line 6777
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6778
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 6779
    const/4 v1, 0x1

    .line 6784
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v0

    .line 6787
    .local v0, currentSoundSetting:I
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    if-eq v0, v2, :cond_2

    .line 6788
    const/4 v1, 0x1

    .line 6793
    :cond_2
    iget v2, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    if-eq v2, v3, :cond_3

    .line 6794
    const/4 v1, 0x1

    .line 6797
    :cond_3
    if-eqz v1, :cond_4

    .line 6798
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V

    .line 6805
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    .line 6806
    const-string v2, "Original"

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    .line 6807
    const v2, 0x2040255

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 6809
    :cond_4
    return-void
.end method

.method private refreshNow()J
    .locals 12

    .prologue
    .line 3854
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v8, :cond_0

    .line 3855
    const-wide/16 v6, 0x1f4

    .line 3917
    :goto_0
    return-wide v6

    .line 3857
    :cond_0
    :try_start_0
    iget-wide v8, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v2

    .line 3858
    .local v2, pos:J
    :goto_1
    const-wide/16 v8, 0x3e8

    const-wide/16 v10, 0x3e8

    rem-long v10, v2, v10

    sub-long v6, v8, v10

    .line 3859
    .local v6, remaining:J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-ltz v8, :cond_7

    iget-wide v8, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    .line 3862
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollY()I

    move-result v8

    if-lez v8, :cond_1

    .line 3863
    const-string v8, "[HtcMusic]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time escpae: scrollX = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollX()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", scrollY = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollY()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3868
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->scrollTo(II)V

    .line 3870
    :cond_1
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    const-wide/16 v9, 0x3e8

    div-long v9, v2, v9

    invoke-static {p0, v9, v10}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3873
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollY()I

    move-result v8

    if-lez v8, :cond_2

    .line 3874
    const-string v8, "[HtcMusic]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time left: scrollX = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollX()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", scrollY = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollY()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3877
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->scrollTo(II)V

    .line 3885
    :cond_2
    iget-wide v8, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long v10, v2, v10

    sub-long v4, v8, v10

    .line 3887
    .local v4, remain:J
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_5

    .end local v4           #remain:J
    :goto_2
    invoke-static {p0, v4, v5}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3891
    const-wide/16 v8, 0x3e8

    mul-long v0, v8, v2

    .line 3892
    .local v0, number:J
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    iget-wide v9, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    cmp-long v9, v0, v9

    if-lez v9, :cond_6

    .end local v0           #number:J
    :goto_3
    iget-wide v9, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    div-long v9, v0, v9

    long-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 3895
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_3

    .line 3896
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->getBufferingPercent()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    div-int/lit8 v9, v9, 0x64

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcSeekBar;->setSecondaryProgress(I)V

    .line 3910
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->setProgressTimeIndicator()V

    goto/16 :goto_0

    .line 3914
    .end local v2           #pos:J
    .end local v6           #remaining:J
    :catch_0
    move-exception v8

    .line 3917
    :goto_5
    const-wide/16 v6, 0x1f4

    goto/16 :goto_0

    .line 3857
    :cond_4
    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    goto/16 :goto_1

    .line 3887
    .restart local v2       #pos:J
    .restart local v4       #remain:J
    .restart local v6       #remaining:J
    :cond_5
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 3892
    .end local v4           #remain:J
    .restart local v0       #number:J
    :cond_6
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    goto :goto_3

    .line 3900
    .end local v0           #number:J
    :cond_7
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    const-string v9, "--:--"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3901
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    const-string v9, "--:--"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3902
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 3904
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3905
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcSeekBar;->setSecondaryProgress(I)V

    goto :goto_4

    .line 3915
    .end local v2           #pos:J
    .end local v6           #remaining:J
    :catch_1
    move-exception v8

    goto :goto_5

    .line 3907
    .restart local v2       #pos:J
    .restart local v6       #remaining:J
    :cond_8
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcSeekBar;->setSecondaryProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4
.end method

.method private registerTVDisplayHelper()V
    .locals 3

    .prologue
    .line 1645
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-nez v1, :cond_0

    .line 1646
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHtcTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    invoke-direct {v1, p0, v2}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;-><init>(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 1652
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1653
    .local v0, fDLNA:Landroid/content/IntentFilter;
    const-string v1, "com.htc.dlnamiddlelayer.action.dmc_destroy_notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1654
    const-string v1, "com.htc.music.triggerplayinlibrary"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1655
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1656
    return-void

    .line 1649
    .end local v0           #fDLNA:Landroid/content/IntentFilter;
    :cond_0
    const-string v1, "[HtcMusic]"

    const-string v2, "registerTVDisplayHelper, already register it, ignore this time."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseTVDisplayHelper()V
    .locals 2

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->release()V

    .line 1661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 1668
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1671
    :goto_1
    return-void

    .line 1664
    :cond_0
    const-string v0, "[HtcMusic]"

    const-string v1, "releaseTVDisplayHelper, mTVHelper is null, no need to release."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1669
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private resetCurrentAlbumArt()V
    .locals 11

    .prologue
    .line 7600
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 7601
    const-string v1, "[HtcMusic]"

    const-string v4, "mService is null while resetCurrentAlbumArt "

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7637
    :cond_0
    :goto_0
    return-void

    .line 7604
    :cond_1
    const-string v1, "[HtcMusic]"

    const-string v4, "resetCurrentAlbum"

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7606
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7607
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v6

    .line 7608
    .local v6, currentAlbumId:I
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "dl_data"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "dl_data_backup"

    aput-object v4, v2, v1

    .line 7610
    .local v2, cols:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dl_album_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7612
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 7615
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7616
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 7617
    .local v10, values:Landroid/content/ContentValues;
    const-string v1, "dl_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 7619
    .local v9, original_path:Ljava/lang/String;
    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7620
    const-string v1, "dl_data"

    const-string v4, ""

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7621
    const-string v1, "dl_data_backup"

    invoke-virtual {v10, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7622
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7624
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7626
    .end local v9           #original_path:Ljava/lang/String;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_2
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v1, :cond_0

    .line 7627
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v4, 0x0

    invoke-virtual {v1, v6, v4}, Lcom/htc/music/GliderAdapter;->setDlAlbumArt(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 7629
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #currentAlbumId:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 7630
    .local v8, ex:Landroid/os/RemoteException;
    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught remote exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7632
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 7633
    .local v8, ex:Ljava/lang/Exception;
    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private resetTimeout()V
    .locals 4

    .prologue
    const/16 v3, 0x1771

    .line 742
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 743
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 745
    return-void
.end method

.method private scanBackward(IJ)V
    .locals 12
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    const-wide/16 v10, 0x0

    .line 3103
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_1

    .line 3144
    :cond_0
    :goto_0
    return-void

    .line 3106
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->canRewind()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3110
    if-nez p1, :cond_2

    .line 3111
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 3112
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 3113
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    goto :goto_0

    .line 3142
    :catch_0
    move-exception v4

    goto :goto_0

    .line 3115
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 3116
    cmp-long v4, p2, v6

    if-gez v4, :cond_6

    .line 3118
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 3123
    :goto_1
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    sub-long v2, v4, p2

    .line 3124
    .local v2, newpos:J
    cmp-long v4, v2, v10

    if-gez v4, :cond_3

    .line 3126
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->prev()V

    .line 3127
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 3128
    .local v0, duration:J
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 3129
    add-long/2addr v2, v0

    .line 3131
    .end local v0           #duration:J
    :cond_3
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    if-gez p1, :cond_5

    .line 3132
    :cond_4
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    .line 3133
    iput-wide p2, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 3135
    :cond_5
    if-ltz p1, :cond_7

    .line 3136
    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    .line 3140
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    goto :goto_0

    .line 3121
    .end local v2           #newpos:J
    :cond_6
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 3138
    .restart local v2       #newpos:J
    :cond_7
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private scanForward(IJ)V
    .locals 10
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    .line 3147
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 3184
    :goto_0
    return-void

    .line 3150
    :cond_0
    if-nez p1, :cond_1

    .line 3151
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 3152
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 3153
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    goto :goto_0

    .line 3182
    :catch_0
    move-exception v4

    goto :goto_0

    .line 3155
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 3156
    cmp-long v4, p2, v6

    if-gez v4, :cond_5

    .line 3158
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 3163
    :goto_1
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    add-long v2, v4, p2

    .line 3164
    .local v2, newpos:J
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 3165
    .local v0, duration:J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    .line 3167
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->next()V

    .line 3168
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 3169
    sub-long/2addr v2, v0

    .line 3171
    :cond_2
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    if-gez p1, :cond_4

    .line 3172
    :cond_3
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    .line 3173
    iput-wide p2, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 3175
    :cond_4
    if-ltz p1, :cond_6

    .line 3176
    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    .line 3180
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    goto :goto_0

    .line 3161
    .end local v0           #duration:J
    .end local v2           #newpos:J
    :cond_5
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 3178
    .restart local v0       #duration:J
    .restart local v2       #newpos:J
    :cond_6
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private seekMethod1(I)Z
    .locals 8
    .parameter "keyCode"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, -0x1

    const/4 v4, 0x2

    .line 2877
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_b

    .line 2878
    const/4 v2, 0x0

    .local v2, y:I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_a

    .line 2879
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->keyboard:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    if-ne v3, p1, :cond_9

    .line 2880
    const/4 v0, 0x0

    .line 2882
    .local v0, dir:I
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-ne v1, v3, :cond_1

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ne v2, v3, :cond_1

    .line 2883
    const/4 v0, 0x0

    .line 2903
    :cond_0
    :goto_2
    iput v1, p0, Lcom/htc/music/HtcMusic;->lastX:I

    .line 2904
    iput v2, p0, Lcom/htc/music/HtcMusic;->lastY:I

    .line 2906
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    mul-int/lit8 v6, v0, 0x5

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2909
    :goto_3
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    .line 2910
    const/4 v3, 0x1

    .line 2916
    .end local v0           #dir:I
    .end local v2           #y:I
    :goto_4
    return v3

    .line 2884
    .restart local v0       #dir:I
    .restart local v2       #y:I
    :cond_1
    if-nez v2, :cond_2

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-le v1, v3, :cond_2

    .line 2885
    const/4 v0, 0x1

    goto :goto_2

    .line 2886
    :cond_2
    if-nez v2, :cond_3

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-ge v1, v3, :cond_3

    .line 2887
    const/4 v0, -0x1

    goto :goto_2

    .line 2889
    :cond_3
    if-ne v2, v4, :cond_4

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-le v1, v3, :cond_4

    .line 2890
    const/4 v0, -0x1

    goto :goto_2

    .line 2891
    :cond_4
    if-ne v2, v4, :cond_5

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-ge v1, v3, :cond_5

    .line 2892
    const/4 v0, 0x1

    goto :goto_2

    .line 2894
    :cond_5
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ge v2, v3, :cond_6

    if-gt v1, v6, :cond_6

    .line 2895
    const/4 v0, 0x1

    goto :goto_2

    .line 2896
    :cond_6
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ge v2, v3, :cond_7

    if-lt v1, v7, :cond_7

    .line 2897
    const/4 v0, -0x1

    goto :goto_2

    .line 2899
    :cond_7
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-le v2, v3, :cond_8

    if-gt v1, v6, :cond_8

    .line 2900
    const/4 v0, -0x1

    goto :goto_2

    .line 2901
    :cond_8
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-le v2, v3, :cond_0

    if-lt v1, v7, :cond_0

    .line 2902
    const/4 v0, 0x1

    goto :goto_2

    .line 2878
    .end local v0           #dir:I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2877
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2914
    .end local v2           #y:I
    :cond_b
    iput v5, p0, Lcom/htc/music/HtcMusic;->lastX:I

    .line 2915
    iput v5, p0, Lcom/htc/music/HtcMusic;->lastY:I

    .line 2916
    const/4 v3, 0x0

    goto :goto_4

    .line 2907
    .restart local v0       #dir:I
    .restart local v2       #y:I
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method private seekMethod2(I)Z
    .locals 7
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x0

    .line 2920
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_1

    .line 2933
    :cond_0
    :goto_0
    return v2

    .line 2922
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 2923
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->keyboard:[[I

    aget-object v3, v3, v2

    aget v3, v3, v0

    if-ne v3, p1, :cond_2

    .line 2924
    mul-int/lit8 v2, v0, 0x64

    div-int/lit8 v1, v2, 0xa

    .line 2926
    .local v1, seekpercentage:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v3

    int-to-long v5, v1

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2929
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    .line 2930
    const/4 v2, 0x1

    goto :goto_0

    .line 2922
    .end local v1           #seekpercentage:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2927
    .restart local v1       #seekpercentage:I
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private setAllSongsTitle()V
    .locals 0

    .prologue
    .line 3750
    return-void
.end method

.method private setDLNAPreloadEnable(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1674
    const-string v1, "wireless_display"

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 1675
    .local v0, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v0, :cond_0

    .line 1676
    invoke-virtual {v0, p1}, Lcom/htc/service/WirelessDisplayManager;->setDLNAPreloadEnable(Z)V

    .line 1677
    :cond_0
    return-void
.end method

.method private setOnDismissListener(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    .line 427
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 428
    return-void
.end method

.method private setOnSoundEffectDismissListener(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    .line 439
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 440
    return-void
.end method

.method private setPauseButtonImage()V
    .locals 2

    .prologue
    .line 3753
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    if-nez v0, :cond_0

    .line 3762
    :goto_0
    return-void

    .line 3755
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3756
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    goto :goto_0

    .line 3760
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3758
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setPlaybackControlEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 7782
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsPlaybackControlEnabled:Z

    .line 7783
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_0

    .line 7784
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 7785
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    if-eqz v0, :cond_1

    .line 7786
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/RepeatingImageButton;->setEnabled(Z)V

    .line 7787
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    if-eqz v0, :cond_2

    .line 7788
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/RepeatingImageButton;->setEnabled(Z)V

    .line 7789
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v0, :cond_3

    .line 7790
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 7791
    :cond_3
    return-void
.end method

.method private setRepeatButtonImage()V
    .locals 2

    .prologue
    .line 3667
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-nez v0, :cond_0

    .line 3668
    const-string v0, "[HtcMusic]"

    const-string v1, "mRepeatButton is null in setRepeatButtonImage"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3705
    :goto_0
    return-void

    .line 3672
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 3673
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 3703
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3677
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 3678
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3696
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 3697
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 3698
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_0

    .line 3680
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 3682
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 3683
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_0

    .line 3688
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 3690
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 3691
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3678
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setRepeatMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 5399
    packed-switch p1, :pswitch_data_0

    .line 5429
    :goto_0
    return-void

    .line 5402
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 5403
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5404
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 5405
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 5407
    :cond_0
    const v0, 0x7f070054

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 5408
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5409
    :catch_0
    move-exception v0

    goto :goto_0

    .line 5414
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 5415
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 5416
    const v0, 0x7f070055

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 5417
    :catch_1
    move-exception v0

    goto :goto_0

    .line 5422
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 5423
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 5424
    const v0, 0x7f070053

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 5425
    :catch_2
    move-exception v0

    goto :goto_0

    .line 5399
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setRingtone()V
    .locals 2

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v0, :cond_1

    .line 2768
    :cond_0
    :goto_0
    return-void

    .line 2758
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-nez v0, :cond_2

    .line 2759
    new-instance v0, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 2762
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v0, :cond_0

    .line 2763
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioId(I)V

    .line 2764
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 2765
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioType(I)V

    .line 2766
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->useAsRingtone(Z)V

    goto :goto_0
.end method

.method private setSecondaryTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "secondaryTitle"

    .prologue
    const/4 v2, 0x1

    .line 7542
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_1

    .line 7543
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 7544
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 7545
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    .line 7560
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 7561
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f07001f

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 7577
    :cond_1
    return-void

    .line 7547
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 7548
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const-string v1, "com.htc.R.id.secondary"

    invoke-static {v1}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    .line 7550
    :cond_3
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 7551
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 7552
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 7553
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 7556
    :cond_4
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    .line 7557
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method private setShuffleButtonImage()V
    .locals 2

    .prologue
    .line 3709
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-nez v0, :cond_0

    .line 3710
    const-string v0, "[HtcMusic]"

    const-string v1, "mShuffleButton is null in setShuffleButtonImage"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3737
    :goto_0
    return-void

    .line 3714
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 3715
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 3735
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3719
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 3720
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3729
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 3730
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    .line 3734
    :goto_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcImageButton;->invalidate()V

    goto :goto_0

    .line 3723
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 3724
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3720
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private setSoundEffect(Ljava/lang/String;I)V
    .locals 3
    .parameter "soundStyle"
    .parameter "saveStatus"

    .prologue
    const/4 v2, 0x3

    .line 6448
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v1, :cond_0

    .line 6449
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 6450
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/HtcMusic$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6451
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->SetSoundEffectKey:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6452
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "savestatus"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6454
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v1, v0}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6458
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 6456
    :cond_0
    const-string v1, "[HtcMusic]"

    const-string v2, "SetSoundEffect()...mNonUiHandler is null!!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shareMusicFile()V
    .locals 5

    .prologue
    .line 2775
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->canShare()I

    move-result v0

    .line 2777
    .local v0, canShare:I
    packed-switch v0, :pswitch_data_0

    .line 2794
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2796
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2799
    .end local v1           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 2779
    :pswitch_0
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "normal file case, mCurrentAudioPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->showNewDialog(I)V

    goto :goto_0

    .line 2787
    :pswitch_1
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SD DRM case, mCurrentAudioPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2789
    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->showNewDialog(I)V

    goto :goto_0

    .line 2777
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 2804
    invoke-static {p0, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    .line 2807
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2808
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    .line 2818
    :cond_0
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showNewDialog(I)V

    .line 2819
    return-void
.end method

.method private showHideOneShotMode()V
    .locals 0

    .prologue
    .line 3658
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 3659
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 3661
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 3662
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    .line 3663
    return-void
.end method

.method private showSetContactRingtoneToast()V
    .locals 2

    .prologue
    .line 2837
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2838
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2840
    :cond_0
    return-void
.end method

.method private showToast(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 3277
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 3278
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    .line 3281
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 3282
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3283
    return-void
.end method

.method private startAlbumDetail(I)V
    .locals 3
    .parameter "albumId"

    .prologue
    .line 7640
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7641
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 7642
    const-string v1, "albumid"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7643
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7644
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 7645
    return-void
.end method

.method private startAutoDownloadAlbum()V
    .locals 2

    .prologue
    .line 7522
    const-string v0, "[HtcMusic]"

    const-string v1, "start download albumart"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7523
    const-string v0, "action_auto_update_album"

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    .line 7524
    return-void
.end method

.method private startBrowserTabActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1359
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1360
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1361
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1362
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1365
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1366
    const-string v1, "KeepHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1367
    const-string v1, "RemoveStoreHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1368
    const-string v1, "inner-transition"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1369
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 1370
    return-void
.end method

.method private startMusicEnhancerService(Ljava/lang/String;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 7648
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    if-eqz v1, :cond_0

    .line 7649
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7650
    .local v0, downloadAlbumArtIntent:Landroid/content/Intent;
    const-string v1, "com.htc.musicenhancer"

    const-string v2, "com.htc.musicenhancer.EnhancerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7652
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 7654
    .end local v0           #downloadAlbumArtIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private startPlayback()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 3286
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v10, :cond_0

    .line 3378
    :goto_0
    return-void

    .line 3288
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 3289
    .local v2, intent:Landroid/content/Intent;
    const-string v1, ""

    .line 3290
    .local v1, filename:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 3291
    .local v9, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 3292
    .local v6, oneShot:Z
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    iget-boolean v10, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    if-nez v10, :cond_5

    .line 3295
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 3296
    .local v7, scheme:Ljava/lang/String;
    const-string v10, "file"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3297
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3301
    :goto_1
    if-eqz v1, :cond_4

    const-string v10, "content://drm/"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3302
    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v8

    .line 3303
    .local v8, status:I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_2

    .line 3304
    const v10, 0x7f070068

    invoke-direct {p0, v10}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 3305
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 3299
    .end local v8           #status:I
    :cond_1
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3307
    .restart local v8       #status:I
    :cond_2
    if-eq v8, v11, :cond_3

    const/4 v10, 0x2

    if-ne v8, v10, :cond_4

    .line 3309
    :cond_3
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3310
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v10, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v2, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3311
    const-string v10, "drmuri"

    invoke-virtual {v2, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3312
    const-string v10, "drmtargettomain"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3313
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 3314
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 3319
    .end local v8           #status:I
    :cond_4
    const/4 v6, 0x1

    .line 3320
    :try_start_0
    iget-boolean v10, p0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    if-nez v10, :cond_8

    .line 3321
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v10

    if-nez v10, :cond_7

    .line 3322
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->stop()V

    .line 3336
    :goto_2
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10, v1}, Lcom/htc/music/IMediaPlaybackService;->openfile(Ljava/lang/String;)V

    .line 3340
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3342
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 3343
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3351
    .end local v7           #scheme:Ljava/lang/String;
    :cond_5
    :goto_3
    if-nez v6, :cond_6

    .line 3353
    :try_start_1
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z

    move-result v3

    .line 3354
    .local v3, isSystemReady:Z
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v10

    if-nez v10, :cond_9

    if-nez v3, :cond_9

    .line 3377
    .end local v3           #isSystemReady:Z
    :cond_6
    :goto_4
    iput-boolean v13, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    goto/16 :goto_0

    .line 3333
    .restart local v7       #scheme:Ljava/lang/String;
    :cond_7
    :try_start_2
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 3347
    :catch_0
    move-exception v0

    .line 3348
    .local v0, ex:Ljava/lang/Exception;
    const-string v10, "[HtcMusic]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "couldn\'t start playback: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3345
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_8
    const/4 v10, 0x0

    :try_start_3
    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 3362
    .end local v7           #scheme:Ljava/lang/String;
    .restart local v3       #isSystemReady:Z
    :cond_9
    :try_start_4
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 3363
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-wide v4

    .line 3365
    .local v4, next:J
    :try_start_5
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3366
    invoke-direct {p0, v4, v5}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 3368
    :catch_1
    move-exception v0

    .line 3369
    .restart local v0       #ex:Ljava/lang/Exception;
    :try_start_6
    const-string v10, "[HtcMusic]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startPlayback Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 3372
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #isSystemReady:Z
    .end local v4           #next:J
    :catch_2
    move-exception v0

    .line 3373
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v10, "[HtcMusic]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startPlayback Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private startUpdateAllAlbum()V
    .locals 2

    .prologue
    .line 7527
    const-string v0, "[HtcMusic]"

    const-string v1, "start update all albumart"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7528
    const-string v0, "action_update_all_album"

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    .line 7529
    return-void
.end method

.method private stopDownloadAlbumArtService()V
    .locals 2

    .prologue
    .line 7532
    const-string v0, "[HtcMusic]"

    const-string v1, "stopDownloadAlbumArtService"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7533
    const-string v0, "action_cancel_download"

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    .line 7538
    return-void
.end method

.method private stopFFRWScan(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 1481
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1482
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1483
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1484
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1485
    return-void
.end method

.method private toggleShuffle()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 3218
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 3248
    :goto_0
    return-void

    .line 3222
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 3223
    .local v0, shuffle:I
    if-nez v0, :cond_2

    .line 3224
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 3225
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3226
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 3227
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 3234
    :cond_1
    const v1, 0x7f070051

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 3245
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    goto :goto_0

    .line 3246
    .end local v0           #shuffle:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3235
    .restart local v0       #shuffle:I
    :cond_2
    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    .line 3237
    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 3238
    const v1, 0x7f070052

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_1

    .line 3240
    :cond_4
    const-string v1, "[HtcMusic]"

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

.method private updateCurrentAlbum()V
    .locals 5

    .prologue
    .line 7580
    const-string v2, "[HtcMusic]"

    const-string v3, "updateCurrentAlbum"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7581
    new-instance v0, Landroid/content/Intent;

    const-string v2, "action_update_current_album"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7583
    .local v0, downloadAlbumArtIntent:Landroid/content/Intent;
    const-string v2, "com.htc.musicenhancer"

    const-string v3, "com.htc.musicenhancer.EnhancerService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7586
    :try_start_0
    const-string v2, "album_id"

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7588
    const-string v2, "audio_id"

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7590
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7597
    :goto_0
    return-void

    .line 7591
    :catch_0
    move-exception v1

    .line 7592
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception in updateCurrentAlbum. Ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateGlider()V
    .locals 10

    .prologue
    .line 3780
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v7, :cond_1

    .line 3841
    :cond_0
    :goto_0
    return-void

    .line 3784
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueue()[I

    move-result-object v0

    .line 3785
    .local v0, albumIdArray:[I
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v6

    .line 3786
    .local v6, selectedPos:I
    const/4 v4, 0x0

    .line 3787
    .local v4, nLength:I
    if-eqz v0, :cond_2

    .line 3788
    array-length v4, v0

    .line 3791
    :cond_2
    if-eqz v0, :cond_5

    if-lez v4, :cond_5

    .line 3792
    new-array v1, v4, [Lcom/htc/music/GliderAdapter$AlbumInfo;

    .line 3794
    .local v1, albumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 3795
    new-instance v7, Lcom/htc/music/GliderAdapter$AlbumInfo;

    invoke-direct {v7}, Lcom/htc/music/GliderAdapter$AlbumInfo;-><init>()V

    aput-object v7, v1, v3

    .line 3796
    aget-object v7, v1, v3

    aget v8, v0, v3

    iput v8, v7, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    .line 3794
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3798
    :cond_3
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_0

    .line 3801
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3802
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7}, Lcom/htc/music/GliderAdapter;->clearAllCache()V

    .line 3806
    :cond_4
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    invoke-virtual {v7, v1, v8, v6}, Lcom/htc/music/GliderAdapter;->setAlbumInfo([Lcom/htc/music/GliderAdapter$AlbumInfo;ZI)V

    .line 3819
    .end local v1           #albumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    .end local v3           #i:I
    :goto_2
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v7, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyDataSetChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3826
    .end local v0           #albumIdArray:[I
    .end local v4           #nLength:I
    .end local v6           #selectedPos:I
    :goto_3
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v5

    .line 3827
    .local v5, nSelectPos:I
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_0

    .line 3829
    if-ltz v5, :cond_7

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7}, Lcom/htc/music/GliderAdapter;->getItemCount()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 3830
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 3831
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7, v5}, Lcom/htc/music/GliderAdapter;->onSelectionChanged(I)V

    .line 3832
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7, v5}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3838
    .end local v5           #nSelectPos:I
    :catch_0
    move-exception v2

    .line 3839
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3809
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #albumIdArray:[I
    .restart local v4       #nLength:I
    .restart local v6       #selectedPos:I
    :cond_5
    :try_start_2
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_0

    .line 3812
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3813
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7}, Lcom/htc/music/GliderAdapter;->clearAllCache()V

    .line 3815
    :cond_6
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v8, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v9

    invoke-virtual {v7, v8, v9, v6}, Lcom/htc/music/GliderAdapter;->setAlbumInfo([Lcom/htc/music/GliderAdapter$AlbumInfo;ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3821
    .end local v0           #albumIdArray:[I
    .end local v4           #nLength:I
    .end local v6           #selectedPos:I
    :catch_1
    move-exception v2

    .line 3822
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 3834
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v5       #nSelectPos:I
    :cond_7
    :try_start_3
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 3835
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/music/GliderAdapter;->onSelectionChanged(I)V

    .line 3836
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private updateTitle()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1053
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1055
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/music/HtcMusic;->setSecondaryTitle(Ljava/lang/String;)V

    .line 1058
    :cond_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    if-nez v3, :cond_2

    .line 1091
    :cond_1
    :goto_0
    return-void

    .line 1060
    :cond_2
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v4, 0x2c

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1061
    .local v2, queue:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v4, 0x2e

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1063
    .local v0, close:Landroid/view/MenuItem;
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 1065
    .local v1, nDlnaMode:I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    .line 1067
    :cond_3
    if-eqz v2, :cond_4

    .line 1068
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1070
    :cond_4
    if-eqz v0, :cond_1

    .line 1071
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1074
    :cond_5
    if-eqz v2, :cond_6

    .line 1075
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v3, :cond_7

    .line 1076
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1085
    :cond_6
    :goto_1
    if-eqz v0, :cond_1

    .line 1086
    const-string v3, "[HtcMusic]"

    const-string v4, "invisible dmc close button"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1078
    :cond_7
    if-ne v6, v1, :cond_8

    .line 1079
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1081
    :cond_8
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private updateTrackInfoP()V
    .locals 30

    .prologue
    .line 4588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 4836
    :cond_0
    :goto_0
    return-void

    .line 4591
    :cond_1
    const/16 v24, 0x0

    .line 4592
    .local v24, path:Ljava/lang/String;
    const/16 v27, 0x0

    .line 4593
    .local v27, service_queuesize:I
    const/4 v10, 0x0

    .line 4594
    .local v10, artistName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 4595
    .local v9, albumName:Ljava/lang/String;
    const/16 v29, 0x0

    .line 4596
    .local v29, trackName:Ljava/lang/String;
    const/16 v22, 0x0

    .line 4598
    .local v22, ntrack:I
    const/16 v21, 0x0

    .line 4600
    .local v21, nOfSongs:Ljava/lang/String;
    const/16 v25, 0x0

    .line 4603
    .local v25, position:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 4627
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4833
    :catch_0
    move-exception v15

    .line 4834
    .local v15, ex:Landroid/os/RemoteException;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 4608
    .end local v15           #ex:Landroid/os/RemoteException;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v24

    .line 4609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v27

    .line 4610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v10

    .line 4611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v9

    .line 4612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v29

    .line 4614
    if-eqz v24, :cond_14

    .line 4615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    if-gez v2, :cond_13

    const/16 v22, 0x1

    .line 4620
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 4621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    .line 4622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v26

    .line 4623
    .local v26, queue:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v25

    .line 4624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-gez v2, :cond_15

    const/16 v23, 0x1

    .line 4627
    .local v23, ntrack_temp:I
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4630
    if-nez v24, :cond_4

    if-eqz v27, :cond_0

    .line 4638
    :cond_4
    if-eqz v24, :cond_17

    .line 4639
    const-string v2, "<unknown>"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4640
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4642
    :cond_5
    const-string v2, "<unknown>"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4643
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4648
    :cond_6
    if-nez v10, :cond_10

    if-nez v9, :cond_10

    if-nez v29, :cond_10

    .line 4650
    const-string v2, "[HtcMusic]"

    const-string v3, "updateTrackInfoP - get metadata from MediaMetadataRetriever"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4652
    new-instance v17, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v17 .. v17}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4654
    .local v17, mmr:Landroid/media/MediaMetadataRetriever;
    if-eqz v17, :cond_7

    .line 4656
    :try_start_4
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 4658
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    .line 4660
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    .line 4662
    const/4 v2, 0x7

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v29

    .line 4669
    :goto_3
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 4670
    const/16 v17, 0x0

    .line 4675
    :cond_7
    if-eqz v10, :cond_8

    .line 4676
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 4678
    :cond_8
    if-eqz v10, :cond_9

    const-string v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4679
    :cond_9
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4681
    :cond_a
    if-eqz v9, :cond_b

    .line 4682
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 4684
    :cond_b
    if-eqz v9, :cond_c

    const-string v2, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4685
    :cond_c
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4687
    :cond_d
    if-eqz v29, :cond_e

    .line 4688
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    .line 4690
    :cond_e
    if-eqz v29, :cond_f

    const-string v2, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4692
    :cond_f
    const-string v2, "/"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4693
    const/16 v19, -0x1

    .local v19, nBegin:I
    const/16 v20, -0x1

    .line 4695
    .local v20, nEnd:I
    const-string v2, "/"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    .line 4696
    const-string v2, "."

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    .line 4698
    if-ltz v19, :cond_10

    move/from16 v0, v20

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    .line 4699
    add-int/lit8 v2, v19, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 4708
    .end local v17           #mmr:Landroid/media/MediaMetadataRetriever;
    .end local v19           #nBegin:I
    .end local v20           #nEnd:I
    :cond_10
    const/4 v8, 0x0

    .line 4709
    .local v8, albumArtist_tmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    .line 4710
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    .line 4711
    if-eqz v9, :cond_11

    const-string v2, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, " "

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4714
    :cond_11
    move-object v8, v10

    .line 4730
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 4734
    .local v18, msg:Landroid/os/Message;
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "AlbumArtistName"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4735
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TrackName"

    move-object/from16 v0, v29

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4816
    .end local v8           #albumArtist_tmp:Ljava/lang/String;
    :cond_12
    :goto_5
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 4819
    .local v28, temp:Ljava/lang/StringBuilder;
    :try_start_6
    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4820
    const-string v2, " / "

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4821
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4822
    const-string v2, " "

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4823
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 4829
    :goto_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4831
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 4615
    .end local v18           #msg:Landroid/os/Message;
    .end local v23           #ntrack_temp:I
    .end local v26           #queue:[I
    .end local v28           #temp:Ljava/lang/StringBuilder;
    :cond_13
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    add-int/lit8 v22, v2, 0x1

    goto/16 :goto_1

    .line 4617
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    add-int/lit8 v22, v2, 0x1

    goto/16 :goto_1

    .line 4624
    .restart local v26       #queue:[I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v2

    add-int/lit8 v23, v2, 0x1

    goto/16 :goto_2

    .line 4627
    .end local v26           #queue:[I
    :catchall_0
    move-exception v2

    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 4664
    .restart local v17       #mmr:Landroid/media/MediaMetadataRetriever;
    .restart local v23       #ntrack_temp:I
    .restart local v26       #queue:[I
    :catch_1
    move-exception v15

    .line 4665
    .local v15, ex:Ljava/lang/RuntimeException;
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTrackInfoP(), Uri.parse(path) = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v15}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 4716
    .end local v15           #ex:Ljava/lang/RuntimeException;
    .end local v17           #mmr:Landroid/media/MediaMetadataRetriever;
    .restart local v8       #albumArtist_tmp:Ljava/lang/String;
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 4738
    .end local v8           #albumArtist_tmp:Ljava/lang/String;
    :cond_17
    if-eqz v26, :cond_0

    move-object/from16 v0, v26

    array-length v2, v0

    if-lez v2, :cond_0

    if-ltz v25, :cond_0

    move-object/from16 v0, v26

    array-length v2, v0

    move/from16 v0, v25

    if-le v2, v0, :cond_0

    .line 4743
    const/16 v2, 0xb

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

    .line 4760
    .local v4, mCursorCols:[Ljava/lang/String;
    aget v2, v26, v25

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 4761
    .local v16, id:Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    move-result-object v11

    .line 4765
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 4770
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4771
    const-string v2, "artist"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4773
    .local v13, cursor_artistName:Ljava/lang/String;
    if-eqz v13, :cond_18

    const-string v2, "<unknown>"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4775
    :cond_18
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4777
    :cond_19
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artistName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4779
    const-string v2, "album"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4781
    .local v12, cursor_albumName:Ljava/lang/String;
    if-eqz v12, :cond_1a

    const-string v2, "<unknown>"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 4783
    :cond_1a
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4785
    :cond_1b
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTrackName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "title"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4802
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    .line 4803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 4805
    .restart local v18       #msg:Landroid/os/Message;
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "AlbumArtistName"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4806
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TrackName"

    const-string v5, "title"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4807
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TotalTime"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4810
    if-eqz v11, :cond_12

    .line 4811
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 4825
    .end local v4           #mCursorCols:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #cursor_albumName:Ljava/lang/String;
    .end local v13           #cursor_artistName:Ljava/lang/String;
    .end local v16           #id:Ljava/lang/String;
    .restart local v28       #temp:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v14

    .line 4826
    .local v14, e:Ljava/lang/RuntimeException;
    const-string v2, "[HtcMusic]"

    invoke-virtual {v14}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_6
.end method

.method private wasDRMFilePlaying(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 4894
    if-eqz p1, :cond_0

    const-string v0, "content://drm/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4895
    const/4 v0, 0x1

    .line 4897
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public BTHeadSetStatusChanged(Z)V
    .locals 2
    .parameter "newStatus"

    .prologue
    .line 6467
    if-nez p1, :cond_0

    .line 6469
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z

    if-eqz v1, :cond_0

    .line 6475
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z

    .line 6477
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 6478
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6484
    :cond_0
    :goto_0
    return-void

    .line 6479
    :catch_0
    move-exception v0

    .line 6480
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public BeatsAudioStatusChanged(Z)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 6564
    return-void
.end method

.method public CheckDLNAMode(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v13, 0x0

    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    .line 6060
    const-string v6, "DLNA"

    const/4 v7, 0x5

    invoke-virtual {p0, v6, v7}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6063
    .local v0, Preferences:Landroid/content/SharedPreferences;
    const-string v6, "Server"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6064
    .local v5, server:Ljava/lang/String;
    const-string v6, "Render"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6065
    .local v4, render:Ljava/lang/String;
    const-string v6, "container"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6066
    .local v1, container:Ljava/lang/String;
    const-string v6, "content"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6067
    .local v2, content:Ljava/lang/String;
    const-string v6, "playatglance"

    invoke-virtual {p1, v6, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 6069
    .local v3, playAtGlance:Z
    const-string v6, "[HtcMusic]"

    const-string v7, "CheckDLNAMode"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6070
    const-string v6, "[HtcMusic]"

    const-string v7, "Get info from intent"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6071
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent DMS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6072
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent DMR = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6073
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent container = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6074
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent content = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6075
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent playAtGlance = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6077
    if-nez v5, :cond_3

    if-nez v4, :cond_3

    if-nez v1, :cond_3

    .line 6078
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 6082
    :cond_0
    const-string v6, "[HtcMusic]"

    const-string v7, "All info from intent is null, get info from preference"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6085
    const-string v6, "server"

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6086
    const-string v6, "Render"

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6087
    const-string v6, "container"

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6088
    const-string v6, "content"

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6090
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from preference DMS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6091
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from preference DMR = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6092
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from preference container = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6093
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from preference content = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6095
    if-nez v5, :cond_2

    if-nez v4, :cond_2

    .line 6173
    :goto_0
    return-void

    .line 6103
    :cond_1
    const-string v6, "[HtcMusic]"

    const-string v7, "content != null, called by DMC, need update local play position"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6105
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "switchLocal"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6118
    :cond_2
    :goto_1
    const-string v6, "[HtcMusic]"

    const-string v7, "save intent info to preference"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6119
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save DMS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6120
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save DMR = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6121
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save container = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6122
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save content = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6123
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save startIdx ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "startIdx"

    invoke-virtual {p1, v8, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6124
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save endIdx = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "endIdx"

    invoke-virtual {p1, v8, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6125
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save direction = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "direction"

    invoke-virtual {p1, v8, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6126
    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save filepath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "filepath"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6128
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "server"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "Render"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "container"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "content"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6133
    const/4 v6, -0x1

    invoke-static {p0, v10, v6, v3}, Lcom/htc/music/util/MusicUtils;->checkDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v6

    iput v6, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    .line 6147
    iget v6, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    .line 6150
    :pswitch_0
    const-string v6, "[HtcMusic]"

    const-string v7, "DLNA_LOCAL mode"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6151
    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 6107
    :cond_3
    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 6108
    const-string v6, "[HtcMusic]"

    const-string v7, "server, container, content != null, called by DMC, need update DMP"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6110
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "switchDMP"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "filepath"

    const-string v8, "filepath"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "startIdx"

    const-string v8, "startIdx"

    invoke-virtual {p1, v8, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "endIdx"

    const-string v8, "endIdx"

    invoke-virtual {p1, v8, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "direction"

    const-string v8, "direction"

    invoke-virtual {p1, v8, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 6156
    :pswitch_1
    const-string v6, "[HtcMusic]"

    const-string v7, "DLNA_DMP mode"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6161
    :pswitch_2
    const-string v6, "[HtcMusic]"

    const-string v7, "CheckDLNAMode:DLNA_PUSH mode."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6167
    :pswitch_3
    const-string v6, "[HtcMusic]"

    const-string v7, "CheckDLNAMode:DLNA_DMC mode."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public OnHdmiPlugReceiver(Lcom/htc/music/util/HdmiPlugReceiver;I)V
    .locals 3
    .parameter "caller"
    .parameter "bIsPluged"

    .prologue
    .line 6690
    const-string v0, "[HtcMusic]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnHdmiPlugReceiver, bIsPluged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6693
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6694
    const-string v0, "[HtcMusic]"

    const-string v1, "OnHdmiPlugReceiver, If support Global Beats. Do Nothing for HDMI plugging in/out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6712
    :cond_0
    :goto_0
    return-void

    .line 6698
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6699
    const-string v0, "[HtcMusic]"

    const-string v1, "OnHdmiPlugReceiver headset is plugged. Do Nothing for HDMI plugging in/out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6704
    :cond_2
    if-lez p2, :cond_0

    .line 6705
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6708
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->recoverNoEffectWithHDMI()V

    goto :goto_0
.end method

.method protected afterPlayback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5473
    const/4 v0, 0x0

    .line 5474
    .local v0, enableBtn:Z
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 5477
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v2, :cond_1

    .line 5478
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcImageButton;->setVisibility(I)V

    .line 5479
    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v2, :cond_2

    .line 5480
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcImageButton;->setVisibility(I)V

    .line 5488
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 5489
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 5490
    const/4 v0, 0x1

    .line 5492
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v2, :cond_3

    .line 5493
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 5494
    :cond_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v2, :cond_4

    .line 5495
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 5501
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5521
    :goto_0
    return-void

    .line 5504
    :catch_0
    move-exception v2

    .line 5509
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_6

    .line 5510
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    .line 5511
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5512
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5514
    const-class v2, Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5515
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 5518
    invoke-virtual {p0, v4, v4}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V

    .line 5520
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0
.end method

.method canRewind()Z
    .locals 1

    .prologue
    .line 5609
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 5610
    const/4 v0, 0x0

    .line 5612
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canShare()I
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 5528
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v9, :cond_1

    :cond_0
    move v0, v8

    .line 5605
    :goto_0
    return v0

    .line 5531
    :cond_1
    iget v9, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 5532
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_2

    move v0, v8

    .line 5533
    goto :goto_0

    .line 5535
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 5536
    :cond_3
    if-eqz v1, :cond_4

    .line 5537
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 5538
    goto :goto_0

    .line 5541
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5542
    const/4 v0, 0x0

    .line 5547
    .local v0, canBeShared:I
    const-string v9, "is_music"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 5549
    .local v5, musicType:J
    const-string v9, "_data"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5553
    .local v7, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 5555
    .local v4, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 5556
    const-string v9, "mime_type"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5562
    :cond_6
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-lez v9, :cond_a

    .line 5564
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    .line 5566
    .local v3, drmCursor:Landroid/database/Cursor;
    if-nez v3, :cond_7

    .line 5567
    const-string v9, "[HtcMusic]"

    const-string v10, "MusicUtils.getDrmCursor return null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5569
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5570
    const/4 v1, 0x0

    move v0, v8

    .line 5571
    goto :goto_0

    .line 5574
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_9

    .line 5575
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5577
    const-string v8, "delivery_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 5580
    .local v2, deliveryType:I
    const/4 v8, 0x4

    if-eq v8, v2, :cond_8

    const/4 v8, 0x3

    if-ne v8, v2, :cond_9

    .line 5582
    :cond_8
    const/4 v0, 0x2

    .line 5586
    .end local v2           #deliveryType:I
    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5602
    .end local v3           #drmCursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5603
    const/4 v1, 0x0

    .line 5605
    goto/16 :goto_0

    .line 5590
    :cond_a
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v4, :cond_b

    const-string v8, "audio/x-wma-drm"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 5592
    const-string v8, "[HtcMusic]"

    const-string v9, "canShare()....This file is WMDRM...."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5593
    const/4 v0, 0x0

    goto :goto_1

    .line 5597
    :cond_b
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public checkDrmFile(Landroid/net/Uri;)V
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v7, 0x1

    .line 5432
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5434
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 5435
    .local v5, status:I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 5436
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 5467
    :goto_0
    return-void

    .line 5437
    :cond_0
    if-nez v5, :cond_3

    .line 5438
    invoke-static {v3, p1, v7}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 5440
    .local v0, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v0, :cond_1

    .line 5441
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    .line 5442
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->afterPlayback()V

    goto :goto_0

    .line 5444
    :cond_1
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    .line 5445
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 5446
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 5448
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    .line 5449
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->afterPlayback()V

    goto :goto_0

    .line 5453
    .end local v0           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 5455
    .local v4, scheme:Ljava/lang/String;
    const-string v6, "file"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5456
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 5460
    .local v1, filename:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5461
    .local v2, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v2, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5462
    const-string v6, "drmuri"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5463
    const-string v6, "drmtargettomain"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5464
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 5465
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 5458
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #filename:Ljava/lang/String;
    goto :goto_1
.end method

.method public dismissActiveDialog()V
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    .line 7962
    iget v1, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    if-ne v1, v3, :cond_0

    .line 7973
    :goto_0
    return-void

    .line 7967
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->dismissDialog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7971
    :goto_1
    iput v3, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    goto :goto_0

    .line 7968
    :catch_0
    move-exception v0

    .line 7969
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "[HtcMusic]"

    const-string v2, "[dismissActiveDialog] ."

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 7971
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    iput v3, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    throw v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 3004
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 3006
    .local v2, keyCode:I
    packed-switch v2, :pswitch_data_0

    .line 3029
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 3010
    :pswitch_0
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {p0, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->checkDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v0

    .line 3011
    .local v0, dlnaMode:I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 3013
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->createVolumeDialog()V

    .line 3016
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3018
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getVolume()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3024
    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 3020
    :catch_0
    move-exception v1

    .line 3021
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 3026
    .end local v1           #e1:Landroid/os/RemoteException;
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 3006
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 1534
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1535
    return-void
.end method

.method public headSetStatusChanged(ZZ)V
    .locals 17
    .parameter "newStatus"
    .parameter "isBeatsHeadset"

    .prologue
    .line 6568
    const-string v14, "[HtcMusic]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "headSetStatusChanged, newStatus: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", isBeatsHeadset: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6571
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 6686
    :cond_0
    :goto_0
    return-void

    .line 6575
    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 6576
    const-string v14, "[HtcMusic]"

    const-string v15, "headSetStatusChanged, headset is plugged out and HDMI is connected."

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6578
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->recoverNoEffectWithHDMI()V

    goto :goto_0

    .line 6582
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleSize(Landroid/content/Context;)I

    move-result v13

    .line 6585
    .local v13, styleSize:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v14, v13, :cond_8

    .line 6589
    if-eqz p1, :cond_3

    .line 6590
    const/4 v7, 0x1

    .local v7, i:I
    :goto_1
    if-ge v7, v13, :cond_5

    .line 6591
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/util/SoundEffectItem;

    .line 6592
    .local v5, enableItem:Lcom/htc/music/util/SoundEffectItem;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    .line 6590
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 6595
    .end local v5           #enableItem:Lcom/htc/music/util/SoundEffectItem;
    .end local v7           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    sget v15, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/util/SoundEffectItem;

    .line 6598
    .local v6, equalizerSetting:Lcom/htc/music/util/SoundEffectItem;
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    .line 6602
    iget-boolean v14, v6, Lcom/htc/music/util/SoundEffectItem;->mIsSelected:Z

    if-eqz v14, :cond_5

    .line 6603
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectType()I

    move-result v4

    .line 6605
    .local v4, effectType:I
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 6606
    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    .line 6609
    :cond_4
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6610
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/SoundEffectItem;

    .line 6612
    .local v2, defaultEffect:Lcom/htc/music/util/SoundEffectItem;
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6613
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    .line 6619
    .end local v2           #defaultEffect:Lcom/htc/music/util/SoundEffectItem;
    .end local v4           #effectType:I
    .end local v6           #equalizerSetting:Lcom/htc/music/util/SoundEffectItem;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    sget v15, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/music/util/SoundEffectItem;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    .line 6622
    const/4 v9, 0x0

    .line 6623
    .local v9, item:Lcom/htc/music/util/SoundEffectItem;
    const/4 v7, 0x1

    .restart local v7       #i:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, iSize:I
    :goto_2
    if-ge v7, v8, :cond_7

    .line 6624
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #item:Lcom/htc/music/util/SoundEffectItem;
    check-cast v9, Lcom/htc/music/util/SoundEffectItem;

    .line 6625
    .restart local v9       #item:Lcom/htc/music/util/SoundEffectItem;
    if-nez v9, :cond_6

    .line 6623
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 6629
    :cond_6
    sget v14, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    if-ne v7, v14, :cond_c

    .line 6630
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 6634
    .end local v7           #i:I
    .end local v8           #iSize:I
    .end local v9           #item:Lcom/htc/music/util/SoundEffectItem;
    :catch_0
    move-exception v3

    .line 6635
    .local v3, e:Ljava/lang/Exception;
    const-string v14, "[HtcMusic]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "headSetStatusChanged, Exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6636
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 6639
    .end local v3           #e:Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x33

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 6640
    .local v10, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6643
    .end local v10           #msg:Landroid/os/Message;
    :cond_8
    if-nez p1, :cond_0

    .line 6644
    const/4 v11, 0x0

    .line 6645
    .local v11, recoverEffect:Z
    const/4 v12, 0x0

    .line 6648
    .local v12, showToast:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 6649
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 6651
    const/4 v12, 0x1

    .line 6656
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v14, v15}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v1

    .line 6659
    .local v1, currentSoundSetting:I
    sget v14, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v1, v14, :cond_a

    .line 6660
    const/4 v11, 0x1

    .line 6661
    const/4 v12, 0x1

    .line 6666
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    sget v15, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v14, v15, :cond_b

    .line 6667
    const/4 v11, 0x1

    .line 6668
    const/4 v12, 0x1

    .line 6671
    :cond_b
    if-eqz v12, :cond_0

    .line 6672
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x34

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 6674
    .restart local v10       #msg:Landroid/os/Message;
    const v14, 0x7f0700a1

    iput v14, v10, Landroid/os/Message;->arg1:I

    .line 6675
    if-eqz v11, :cond_d

    .line 6676
    const/4 v14, 0x1

    iput v14, v10, Landroid/os/Message;->arg2:I

    .line 6680
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 6632
    .end local v1           #currentSoundSetting:I
    .end local v10           #msg:Landroid/os/Message;
    .end local v11           #recoverEffect:Z
    .end local v12           #showToast:Z
    .restart local v7       #i:I
    .restart local v8       #iSize:I
    .restart local v9       #item:Lcom/htc/music/util/SoundEffectItem;
    :cond_c
    const/4 v14, 0x1

    :try_start_1
    invoke-virtual {v9, v14}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 6678
    .end local v7           #i:I
    .end local v8           #iSize:I
    .end local v9           #item:Lcom/htc/music/util/SoundEffectItem;
    .restart local v1       #currentSoundSetting:I
    .restart local v10       #msg:Landroid/os/Message;
    .restart local v11       #recoverEffect:Z
    .restart local v12       #showToast:Z
    :cond_d
    const/4 v14, 0x0

    iput v14, v10, Landroid/os/Message;->arg2:I

    goto :goto_4
.end method

.method protected initializeSoundEffectStyles()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 6357
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6359
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6360
    .local v1, resource:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6361
    new-array v2, v6, [Ljava/lang/String;

    const v3, 0x204024b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const v3, 0x204024d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const v3, 0x204024c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    .line 6365
    const v2, 0x204024c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mBestsStrWithBeatsHeadset:Ljava/lang/String;

    .line 6367
    const v2, 0x2040249

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mBestsStrNotBeatsHeadset:Ljava/lang/String;

    .line 6418
    :cond_0
    :goto_0
    return-void

    .line 6372
    .end local v1           #resource:Landroid/content/res/Resources;
    :cond_1
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    if-nez v2, :cond_2

    .line 6374
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_4

    .line 6376
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->initEqualizerStlyes(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6389
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    if-nez v2, :cond_3

    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 6391
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->localizeEqualizerStyle([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    .line 6394
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6395
    .restart local v1       #resource:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6396
    const v2, 0x7f06001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    .line 6399
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isDolbyEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6400
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 6401
    new-array v2, v9, [Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    aget-object v3, v3, v4

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v5

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v6

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v9

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    goto :goto_0

    .line 6380
    .end local v1           #resource:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 6381
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeSoundEffectStyles, Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6385
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const-string v2, "[HtcMusic]"

    const-string v3, "initializeSoundEffectStyles, mService is null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6408
    .restart local v1       #resource:Landroid/content/res/Resources;
    :cond_5
    new-array v2, v9, [Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    aget-object v3, v3, v4

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v5

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v6

    aput-object v3, v2, v5

    const-string v3, "Beats audio"

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public isShowNowPlaying()Z
    .locals 1

    .prologue
    .line 5624
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 32
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 2508
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "receive activity result, requestCode:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", resultCode:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2511
    const/16 v28, -0x1

    move/from16 v0, p2

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 2730
    :cond_0
    :goto_0
    return-void

    .line 2520
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    .line 2521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/NowPlayingViewHelper;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v21

    .line 2523
    .local v21, result:Z
    if-nez v21, :cond_0

    .line 2527
    .end local v21           #result:Z
    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2542
    :sswitch_0
    const/16 v28, -0x1

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 2543
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v28, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v29

    aput v29, v18, v28

    .line 2544
    .local v18, list:[I
    const-string v28, "playlist"

    const/16 v29, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 2546
    .local v19, playlist:I
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 2529
    .end local v18           #list:[I
    .end local v19           #playlist:I
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    .line 2530
    .local v27, uri:Landroid/net/Uri;
    if-eqz v27, :cond_0

    .line 2531
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 2532
    .restart local v18       #list:[I
    const/16 v28, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v29

    aput v29, v18, v28

    .line 2533
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 2534
    .restart local v19       #playlist:I
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto/16 :goto_0

    .line 2552
    .end local v18           #list:[I
    .end local v19           #playlist:I
    .end local v27           #uri:Landroid/net/Uri;
    :sswitch_2
    const/16 v28, -0x1

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 2553
    move-object/from16 v22, p3

    .line 2554
    .local v22, resultIntent:Landroid/content/Intent;
    new-instance v23, Lcom/htc/music/HtcMusic$21;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic$21;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Intent;)V

    .line 2574
    .local v23, setContactRingtoneRunnable:Ljava/lang/Runnable;
    new-instance v26, Ljava/lang/Thread;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2575
    .local v26, thread:Ljava/lang/Thread;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2580
    .end local v22           #resultIntent:Landroid/content/Intent;
    .end local v23           #setContactRingtoneRunnable:Ljava/lang/Runnable;
    .end local v26           #thread:Ljava/lang/Thread;
    :sswitch_3
    const-string v28, "[HtcMusic]"

    const-string v29, "DMR_CHOOSER"

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    const-string v28, "DLNA"

    const/16 v29, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 2587
    .local v20, pref:Landroid/content/SharedPreferences;
    const-string v28, "DMR"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2588
    .local v4, DMR:Ljava/lang/String;
    const-string v28, "server"

    const/16 v29, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2589
    .local v5, DMS:Ljava/lang/String;
    const/16 v17, 0x1

    .line 2590
    .local v17, isSelectedDMR:Z
    if-nez v4, :cond_3

    .line 2591
    const/16 v17, 0x0

    .line 2594
    :cond_3
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "DMR = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2595
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "DMS = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    new-instance v9, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v28

    const/16 v29, 0x1

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v9, v0, v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    .line 2600
    .local v9, dlnaManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-virtual {v9, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->saveRenderer(Ljava/lang/String;)Z

    .line 2602
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_5

    .line 2603
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    const-string v29, "switch"

    const/16 v30, 0x1

    invoke-interface/range {v28 .. v30}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2618
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 2619
    const-string v28, "[HtcMusic]"

    const-string v29, "DMP mode change to DMS mode"

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2621
    const/4 v11, 0x0

    .line 2622
    .local v11, dmpPref:Landroid/content/SharedPreferences;
    const-string v28, "DMP"

    const/16 v29, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 2626
    const-string v28, "container"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2627
    .local v6, container:Ljava/lang/String;
    const-string v28, "curContentId"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2628
    .local v7, curContentId:Ljava/lang/String;
    const-string v28, "startIdx"

    const-wide/16 v29, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v29

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    .line 2629
    .local v24, startIdx:J
    const-string v28, "endIdx"

    const-wide/16 v29, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v29

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2630
    .local v14, endIdx:J
    const-string v28, "direction"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 2632
    .local v8, dir:I
    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    const-wide/16 v28, -0x1

    cmp-long v28, v24, v28

    if-eqz v28, :cond_7

    if-eqz v8, :cond_7

    .line 2634
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 2635
    .local v13, ed:Landroid/content/SharedPreferences$Editor;
    const-string v28, "content"

    move-object/from16 v0, v28

    invoke-interface {v13, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2636
    const-string v28, "container"

    move-object/from16 v0, v28

    invoke-interface {v13, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2637
    const-string v28, "startIdx"

    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    invoke-interface {v13, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2638
    const-string v28, "endIdx"

    move-object/from16 v0, v28

    invoke-interface {v13, v0, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2639
    const-string v28, "direction"

    move-object/from16 v0, v28

    invoke-interface {v13, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2640
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2648
    .end local v6           #container:Ljava/lang/String;
    .end local v7           #curContentId:Ljava/lang/String;
    .end local v8           #dir:I
    .end local v11           #dmpPref:Landroid/content/SharedPreferences;
    .end local v13           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v14           #endIdx:J
    .end local v24           #startIdx:J
    :cond_4
    :goto_2
    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->checkDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v10

    .line 2650
    .local v10, dlnaMode:I
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "DMS = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "server"

    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2651
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "DMR = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2652
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "container = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "container"

    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "content = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "content"

    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "DLNA Mode = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_0

    .line 2700
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    .line 2701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v16

    .line 2702
    .local v16, isPlaying:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 2703
    if-eqz v16, :cond_0

    .line 2704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2708
    .end local v16           #isPlaying:Z
    :catch_0
    move-exception v12

    .line 2709
    .local v12, e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2605
    .end local v10           #dlnaMode:I
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_5
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    const-string v29, "switch"

    const/16 v30, 0x0

    invoke-interface/range {v28 .. v30}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2607
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v28

    if-eqz v28, :cond_6

    .line 2608
    const-string v28, "[HtcMusic]"

    const-string v29, "Service is playing"

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 2613
    :catch_1
    move-exception v12

    .line 2614
    .restart local v12       #e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 2611
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_6
    :try_start_2
    const-string v28, "[HtcMusic]"

    const-string v29, "Service is null or not playing"

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 2642
    .restart local v6       #container:Ljava/lang/String;
    .restart local v7       #curContentId:Ljava/lang/String;
    .restart local v8       #dir:I
    .restart local v11       #dmpPref:Landroid/content/SharedPreferences;
    .restart local v14       #endIdx:J
    .restart local v24       #startIdx:J
    :cond_7
    const-string v28, "[HtcMusic]"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Some one value go wrong, container = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", curContentId = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", startIdx = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", dir = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2658
    .end local v6           #container:Ljava/lang/String;
    .end local v7           #curContentId:Ljava/lang/String;
    .end local v8           #dir:I
    .end local v11           #dmpPref:Landroid/content/SharedPreferences;
    .end local v14           #endIdx:J
    .end local v24           #startIdx:J
    .restart local v10       #dlnaMode:I
    :pswitch_1
    if-eqz v17, :cond_0

    .line 2660
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v28

    if-eqz v28, :cond_8

    .line 2661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->stop()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2668
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    move/from16 v28, v0

    if-eqz v28, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v28, v0

    if-eqz v28, :cond_9

    .line 2669
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 2672
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 2673
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    .line 2674
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->switchToDMC(Landroid/content/Context;Z)Z

    goto/16 :goto_0

    .line 2663
    :catch_2
    move-exception v12

    .line 2664
    .restart local v12       #e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 2679
    .end local v12           #e:Landroid/os/RemoteException;
    :pswitch_2
    if-eqz v17, :cond_0

    .line 2681
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    if-eqz v28, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v28

    if-eqz v28, :cond_a

    .line 2682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->stop()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2689
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    move/from16 v28, v0

    if-eqz v28, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v28, v0

    if-eqz v28, :cond_b

    .line 2690
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 2693
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 2694
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->switchToPUSH(Landroid/content/Context;Z)Z

    goto/16 :goto_0

    .line 2684
    :catch_3
    move-exception v12

    .line 2685
    .restart local v12       #e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 2706
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_c
    :try_start_5
    const-string v28, "[HtcMusic]"

    const-string v29, "service null, cannot stop plugin service"

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 2714
    :pswitch_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 2717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v16

    .line 2719
    .restart local v16       #isPlaying:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 2720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 2722
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->switchToDMP(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 2724
    .end local v16           #isPlaying:Z
    :catch_4
    move-exception v12

    .line 2725
    .restart local v12       #e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2527
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x13 -> :sswitch_2
        0x25 -> :sswitch_3
    .end sparse-switch

    .line 2656
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2844
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v0, :cond_0

    .line 2845
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 2846
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 2854
    :goto_0
    return-void

    .line 2852
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 749
    const-string v4, "[HtcMusic]"

    const-string v5, "onConfigurationChanged"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget v4, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_0

    .line 751
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 838
    :goto_0
    return-void

    .line 755
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x2080001

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 757
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_1

    .line 758
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->detachNowPlayingView()V

    .line 762
    :cond_1
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 763
    iput-boolean v6, p0, Lcom/htc/music/HtcMusic;->mJustCreate:Z

    .line 765
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    .line 766
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 768
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v4, :cond_2

    .line 769
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 773
    :cond_2
    const v4, 0x7f080033

    invoke-virtual {p0, v4}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 775
    .local v0, group:Landroid/view/ViewGroup;
    const v4, 0x7f080068

    invoke-virtual {p0, v4}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 776
    .local v2, mainContainer:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 777
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 780
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 781
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v4, 0x7f030027

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 782
    .local v3, view:Landroid/view/View;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    const v4, 0x7f080035

    invoke-virtual {p0, v4}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 788
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 791
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initConstant()V

    .line 792
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPresentation()V

    .line 793
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v4, :cond_4

    .line 794
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAlpha(I)V

    .line 801
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPlayerInfo()V

    .line 803
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTaskbar()V

    .line 804
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTitleBar()V

    .line 805
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initToolTip()V

    .line 808
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 809
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateGlider()V

    .line 811
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 812
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 813
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 815
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 816
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 819
    :cond_5
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_6

    .line 820
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->attachNowPlayingView()V

    .line 823
    :cond_6
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsRWScanOn:Z

    if-eqz v4, :cond_8

    .line 832
    :cond_7
    const-string v4, "ffstop"

    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->stopFFRWScan(Ljava/lang/String;)V

    .line 833
    iput-boolean v6, p0, Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z

    .line 834
    iput-boolean v6, p0, Lcom/htc/music/HtcMusic;->mIsRWScanOn:Z

    .line 837
    :cond_8
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsPlaybackControlEnabled:Z

    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "icicle"

    .prologue
    .line 444
    const-string v13, "[HtcMusic]"

    const-string v14, "onCreate() +"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 450
    .local v4, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 451
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v13, :cond_0

    .line 452
    new-instance v13, Lcom/htc/music/HtcMusic$EventReceiver;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/htc/music/HtcMusic$EventReceiver;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 453
    new-instance v3, Landroid/content/IntentFilter;

    const-string v13, "com.htc.music.lockscreen_start"

    invoke-direct {v3, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 454
    .local v3, filter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 457
    .end local v3           #filter:Landroid/content/IntentFilter;
    :cond_0
    const-string v13, "from-lockscreen"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 458
    .local v5, isFromLockscreen:Z
    const-string v13, "inner-transition"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 459
    .local v6, isInnerTransition:Z
    const-string v13, "[HtcMusic]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[onCreate] from-lockscreen="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    if-nez v6, :cond_1

    if-eqz v5, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/music/util/MusicUtils;->isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 461
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->disableKeyguard(Landroid/app/Activity;)V

    .line 471
    .end local v5           #isFromLockscreen:Z
    .end local v6           #isInnerTransition:Z
    :cond_2
    :goto_0
    if-eqz v4, :cond_4

    .line 472
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/music/HtcMusic;->CheckDLNAMode(Landroid/content/Intent;)V

    .line 473
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/music/HtcMusic;->mInitAP:Z

    .line 474
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v13

    const/high16 v14, 0x10

    and-int/2addr v13, v14

    if-lez v13, :cond_3

    .line 475
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/HtcMusic;->setIntent(Landroid/content/Intent;)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 479
    :cond_3
    const-string v13, "showEmptyQueue"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/music/HtcMusic;->mShowEmptyQueue:Z

    .line 481
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 483
    .local v8, resources:Landroid/content/res/Resources;
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/HtcMusic;->setVolumeControlStream(I)V

    .line 485
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/HtcMusic;->requestWindowFeature(I)Z

    .line 488
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-eq v13, v14, :cond_5

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-ne v13, v14, :cond_6

    .line 489
    :cond_5
    const-string v13, "[HtcMusic]"

    const-string v14, "DMC mode, return directly"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_6
    new-instance v13, Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    .line 495
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/HtcMusic;->mOrientation:I

    .line 496
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportMMC()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/music/HtcMusic;->mIsSupportMMC:Z

    .line 500
    const v13, 0x7f030028

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/HtcMusic;->setContentView(I)V

    .line 501
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-nez v13, :cond_7

    .line 502
    new-instance v13, Lcom/htc/widget/ActionBarExt;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getActionBar()Landroid/app/ActionBar;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    new-instance v14, Lcom/htc/music/HtcMusic$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/music/HtcMusic$4;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v13, v14}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 512
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->initGlider()V

    .line 526
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    .line 527
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    .line 529
    if-eqz p1, :cond_b

    .line 530
    const-string v13, "configchange"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    .line 531
    const-string v13, "message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    .line 532
    const-string v13, "downloadalbumartid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 533
    const-string v13, "currentAudioId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 534
    const-string v13, "currentAudioPath"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 535
    const-string v13, "shareText"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    .line 537
    const-string v13, "tempSelectedEQIndex"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 539
    .local v11, tempSelectedEQIndex:Ljava/lang/String;
    if-eqz v11, :cond_8

    .line 541
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :cond_8
    :goto_1
    const-string v13, "tempSelectedSoundEffectIndex"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    .line 551
    const-string v13, "tempShowingEQIndex"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 552
    .local v12, tempShowingEQIndex:Ljava/lang/String;
    if-eqz v12, :cond_9

    .line 554
    :try_start_1
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 560
    :cond_9
    :goto_2
    const-string v13, "ringtoneAudioPath"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 561
    .local v9, ringtoneAudioPath:Ljava/lang/String;
    if-eqz v9, :cond_b

    .line 562
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-nez v13, :cond_a

    .line 563
    new-instance v13, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v13, v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 565
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const-string v14, "ringtoneAudioId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioId(I)V

    .line 566
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v13, v9}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const-string v14, "ringtoneAudioType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioType(I)V

    .line 573
    .end local v9           #ringtoneAudioPath:Ljava/lang/String;
    .end local v11           #tempSelectedEQIndex:Ljava/lang/String;
    .end local v12           #tempShowingEQIndex:Ljava/lang/String;
    :cond_b
    new-instance v13, Landroid/os/HandlerThread;

    const-string v14, "HtcMusicActivityWorker"

    invoke-direct {v13, v14}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    .line 574
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    .line 575
    new-instance v13, Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/htc/music/HtcMusic$NonUiHandler;-><init>(Lcom/htc/music/HtcMusic;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    .line 577
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-nez v13, :cond_c

    .line 578
    const-string v13, "[HtcMusic]"

    const-string v14, "onCreate()...mNonUiHandler is null!!!"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v13, :cond_d

    .line 582
    const-string v13, "Music"

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 585
    :cond_d
    const/4 v7, 0x0

    .line 586
    .local v7, nowPlayingViewOn:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "ShowNowPlaying"

    const/4 v15, -0x1

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 588
    .local v10, showNowPlaying:I
    const/4 v13, -0x1

    if-ne v13, v10, :cond_10

    .line 589
    const/4 v7, 0x0

    .line 596
    :goto_3
    if-eqz v7, :cond_e

    .line 597
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 602
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    .line 605
    new-instance v13, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-direct/range {v13 .. v16}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 606
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mControllerListener:Lcom/htc/music/HtcMusic$ControllerListener;

    invoke-virtual {v13, v14}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V

    .line 608
    const-string v13, "[HtcMusic]"

    const-string v14, "onCreate() -"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return-void

    .line 463
    .end local v7           #nowPlayingViewOn:Z
    .end local v8           #resources:Landroid/content/res/Resources;
    .end local v10           #showNowPlaying:I
    .restart local v5       #isFromLockscreen:Z
    .restart local v6       #isInnerTransition:Z
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 543
    .end local v5           #isFromLockscreen:Z
    .end local v6           #isInnerTransition:Z
    .restart local v8       #resources:Landroid/content/res/Resources;
    .restart local v11       #tempSelectedEQIndex:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 544
    .local v2, ex:Ljava/lang/Exception;
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    goto/16 :goto_1

    .line 555
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v12       #tempShowingEQIndex:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 556
    .restart local v2       #ex:Ljava/lang/Exception;
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    goto/16 :goto_2

    .line 590
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v11           #tempSelectedEQIndex:Ljava/lang/String;
    .end local v12           #tempShowingEQIndex:Ljava/lang/String;
    .restart local v7       #nowPlayingViewOn:Z
    .restart local v10       #showNowPlaying:I
    :cond_10
    if-nez v10, :cond_11

    .line 591
    const/4 v7, 0x0

    goto :goto_3

    .line 593
    :cond_11
    const/4 v7, 0x1

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 24
    .parameter "id"

    .prologue
    .line 4945
    sparse-switch p1, :sswitch_data_0

    .line 5262
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v14

    :goto_0
    return-object v14

    .line 4947
    :sswitch_0
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v14

    goto :goto_0

    .line 4952
    :sswitch_1
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v11, v0, [Ljava/lang/CharSequence;

    const/16 v20, 0x0

    const v21, 0x7f07007a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    const/16 v20, 0x1

    const v21, 0x7f070079

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    const/16 v20, 0x2

    const v21, 0x7f0700b7

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    .line 4955
    .local v11, items:[Ljava/lang/CharSequence;
    new-instance v20, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v21, 0x7f070078

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    new-instance v21, Lcom/htc/music/HtcMusic$29;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$29;-><init>(Lcom/htc/music/HtcMusic;)V

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v11, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v14

    .line 4975
    .local v14, repeatDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    goto :goto_0

    .line 4981
    .end local v11           #items:[Ljava/lang/CharSequence;
    .end local v14           #repeatDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_2
    new-instance v20, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const v21, 0x7f070068

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const v21, 0x1040013

    new-instance v22, Lcom/htc/music/HtcMusic$30;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$30;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual/range {v20 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    .line 4993
    .local v5, dialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v14, v5

    .line 4994
    goto/16 :goto_0

    .line 4996
    .end local v5           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 4999
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 5002
    :cond_1
    new-instance v20, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const v21, 0x1040013

    new-instance v22, Lcom/htc/music/HtcMusic$32;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$32;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual/range {v20 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const v21, 0x1040009

    new-instance v22, Lcom/htc/music/HtcMusic$31;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$31;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual/range {v20 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 5022
    .local v8, drmDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v14, v8

    .line 5023
    goto/16 :goto_0

    .line 5034
    .end local v8           #drmDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_4
    const/16 v20, 0x6

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 5035
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v11, v0, [Ljava/lang/CharSequence;

    const/16 v20, 0x0

    const v21, 0x7f0700b4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    const/16 v20, 0x1

    const v21, 0x7f0700b5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    const/16 v20, 0x2

    const v21, 0x7f0700b6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    .line 5047
    .restart local v11       #items:[Ljava/lang/CharSequence;
    :goto_1
    const/4 v15, 0x0

    .line 5048
    .local v15, ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 5049
    new-instance v20, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 5050
    const-string v20, "[HtcMusic]"

    const-string v21, "Ringtonehelper is null!! this should never happen!!"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5053
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 5054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    move-object/from16 v20, v0

    const/16 v21, 0x13

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v15

    .line 5056
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    :cond_3
    move-object v14, v15

    .line 5059
    goto/16 :goto_0

    .line 5040
    .end local v11           #items:[Ljava/lang/CharSequence;
    .end local v15           #ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_4
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v11, v0, [Ljava/lang/CharSequence;

    const/16 v20, 0x0

    const v21, 0x7f0700b4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    const/16 v20, 0x1

    const v21, 0x7f0700b5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    .restart local v11       #items:[Ljava/lang/CharSequence;
    goto :goto_1

    .line 5062
    .end local v11           #items:[Ljava/lang/CharSequence;
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->createDownloadAlbumArtDialog()Landroid/app/Dialog;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    .line 5063
    const-string v20, "[HtcMusic]"

    const-string v21, "onCreateDialog DIALOG_DOWNLOAD_ALBUMART"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5064
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 5067
    :sswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    .line 5075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 5076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    .line 5078
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 5082
    :sswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    .line 5086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 5087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    .line 5089
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 5093
    :sswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->createSoundEffectDialog()Landroid/app/Dialog;

    move-result-object v17

    .line 5094
    .local v17, soundEffectDialog:Landroid/app/Dialog;
    if-eqz v17, :cond_0

    move-object/from16 v14, v17

    .line 5095
    goto/16 :goto_0

    .line 5100
    .end local v17           #soundEffectDialog:Landroid/app/Dialog;
    :sswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->createEqualizerDialog()Landroid/app/Dialog;

    move-result-object v9

    .line 5101
    .local v9, equalizerDialog:Landroid/app/Dialog;
    if-eqz v9, :cond_0

    move-object v14, v9

    .line 5102
    goto/16 :goto_0

    .line 5107
    .end local v9           #equalizerDialog:Landroid/app/Dialog;
    :sswitch_a
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v11, v0, [Ljava/lang/CharSequence;

    const/16 v20, 0x0

    const v21, 0x7f070123

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    const/16 v20, 0x1

    const v21, 0x7f070124

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    .line 5110
    .restart local v11       #items:[Ljava/lang/CharSequence;
    new-instance v20, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    new-instance v21, Lcom/htc/music/HtcMusic$33;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$33;-><init>(Lcom/htc/music/HtcMusic;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    .line 5127
    .local v16, shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object/from16 v14, v16

    .line 5128
    goto/16 :goto_0

    .line 5132
    .end local v11           #items:[Ljava/lang/CharSequence;
    .end local v16           #shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mTextDialog:Landroid/app/Dialog;

    .line 5135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTextDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 5136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTextDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    .line 5138
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mTextDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 5143
    :sswitch_c
    const/4 v11, 0x0

    .line 5145
    .restart local v11       #items:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 5146
    :cond_8
    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v11, v0, [Ljava/lang/CharSequence;

    .end local v11           #items:[Ljava/lang/CharSequence;
    const/16 v20, 0x0

    const v21, 0x7f0701cb

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    const/16 v20, 0x1

    const v21, 0x7f070059

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    const/16 v20, 0x2

    const v21, 0x204020f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    const/16 v20, 0x3

    const v21, 0x7f070056

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    const/16 v20, 0x4

    const v21, 0x204014d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    .line 5158
    .restart local v11       #items:[Ljava/lang/CharSequence;
    :cond_9
    :goto_2
    new-instance v20, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    new-instance v21, Lcom/htc/music/HtcMusic$34;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$34;-><init>(Lcom/htc/music/HtcMusic;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v13

    .line 5201
    .local v13, optionDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v14, v13

    .line 5202
    goto/16 :goto_0

    .line 5152
    .end local v13           #optionDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 5153
    :cond_b
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v11, v0, [Ljava/lang/CharSequence;

    .end local v11           #items:[Ljava/lang/CharSequence;
    const/16 v20, 0x0

    const v21, 0x204020f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    const/16 v20, 0x1

    const v21, 0x204014d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    .restart local v11       #items:[Ljava/lang/CharSequence;
    goto :goto_2

    .line 5206
    .end local v11           #items:[Ljava/lang/CharSequence;
    :sswitch_d
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 5207
    .local v10, inflater:Landroid/view/LayoutInflater;
    const v20, 0x7f030018

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 5208
    .local v19, view:Landroid/view/View;
    const v20, 0x7f080053

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/AutoCompleteTextView;

    .line 5209
    .local v18, textview:Landroid/widget/AutoCompleteTextView;
    const v20, 0x7f07005d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 5210
    .local v12, name:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 5211
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelectAllOnFocus(Z)V

    .line 5213
    new-instance v20, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v21, 0x7f070098

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const v21, 0x2040152

    new-instance v22, Lcom/htc/music/HtcMusic$36;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$36;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual/range {v20 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const v21, 0x7f070069

    new-instance v22, Lcom/htc/music/HtcMusic$35;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic$35;-><init>(Lcom/htc/music/HtcMusic;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual/range {v20 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    .line 5228
    .local v4, createDialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v20, Lcom/htc/music/HtcMusic$EditTextWatcher;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/htc/music/HtcMusic$EditTextWatcher;-><init>(Lcom/htc/widget/HtcAlertDialog;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object v14, v4

    .line 5229
    goto/16 :goto_0

    .line 5232
    .end local v4           #createDialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v10           #inflater:Landroid/view/LayoutInflater;
    .end local v12           #name:Ljava/lang/String;
    .end local v18           #textview:Landroid/widget/AutoCompleteTextView;
    .end local v19           #view:Landroid/view/View;
    :sswitch_e
    new-instance v20, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const v21, 0x7f0700d2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const v21, 0x2040174

    new-instance v22, Lcom/htc/music/HtcMusic$37;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$37;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual/range {v20 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    .local v6, dmrDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object v14, v6

    .line 5242
    goto/16 :goto_0

    .line 5246
    .end local v6           #dmrDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_f
    new-instance v20, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const v21, 0x7f0700d1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const v21, 0x2040174

    new-instance v22, Lcom/htc/music/HtcMusic$38;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$38;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual/range {v20 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    .local v7, dmsDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object v14, v7

    .line 5256
    goto/16 :goto_0

    .line 5260
    .end local v7           #dmsDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_10
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->createConnectionFailDialog()Landroid/app/Dialog;

    move-result-object v14

    goto/16 :goto_0

    .line 4945
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x6 -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_6
        0xf -> :sswitch_7
        0x10 -> :sswitch_8
        0x11 -> :sswitch_9
        0x12 -> :sswitch_c
        0x13 -> :sswitch_a
        0x14 -> :sswitch_b
        0x15 -> :sswitch_d
        0x16 -> :sswitch_e
        0x17 -> :sswitch_f
        0x18 -> :sswitch_10
        0xaae61 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 2184
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2186
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->onCreateActionMenu(Landroid/view/Menu;)V

    .line 2188
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v1, :cond_2

    .line 2189
    iget v1, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-ne v3, v1, :cond_1

    .line 2228
    :cond_0
    :goto_0
    return v0

    .line 2193
    :cond_1
    iput v3, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    .line 2194
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v0, p1}, Lcom/htc/music/NowPlayingViewHelper;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 2197
    :cond_2
    iget v1, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-eq v0, v1, :cond_0

    .line 2200
    iput v0, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    .line 2203
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    if-eqz v1, :cond_3

    .line 2204
    const/16 v1, 0x14

    const v2, 0x7f0700ed

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2208
    :cond_3
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSoundEnhancerEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2209
    const/16 v1, 0x28

    const v2, 0x7f07007c

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2212
    :cond_4
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2213
    const/16 v1, 0x15

    const v2, 0x7f07000b

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2216
    :cond_5
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2217
    const/16 v1, 0x25

    const v2, 0x7f0700c7

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x20800b5

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2222
    :cond_6
    const/16 v1, 0x20

    const v2, 0x2040216

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2224
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2225
    const/16 v1, 0x29

    const v2, 0x2040218

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2100
    const-string v0, "[HtcMusic]"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2104
    invoke-static {p0}, Lcom/htc/music/util/ScreenStatus;->unRegisterReceiver(Landroid/app/Activity;)V

    .line 2106
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2107
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2108
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 2118
    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v0, :cond_1

    .line 2119
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy()V

    .line 2122
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->cleanMessage()V

    .line 2124
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v0, :cond_2

    .line 2125
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v0, v3}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2126
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    .line 2129
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 2130
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2131
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2140
    :cond_3
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearAlbumArtCache()V

    .line 2142
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_4

    .line 2143
    const-string v0, "Music"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 2146
    :cond_4
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ShowNowPlaying"

    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2155
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v0, :cond_5

    .line 2156
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V

    .line 2157
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 2160
    :cond_5
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v0, :cond_6

    .line 2161
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/GliderAdapter;->deInit()V

    .line 2162
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    .line 2165
    :cond_6
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v0, :cond_7

    .line 2166
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->destroy()V

    .line 2167
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 2170
    :cond_7
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 2172
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2173
    const-string v0, "[HtcMusic]"

    const-string v1, "onDestroy finished"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 3034
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 3036
    .local v0, repcnt:I
    iget v2, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->seekMethod1(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3074
    :cond_0
    :goto_0
    return v1

    .line 3036
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->seekMethod2(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3039
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 3074
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 3041
    :sswitch_0
    iget v2, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    rsub-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    goto :goto_0

    .line 3045
    :sswitch_1
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_3

    .line 3048
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/htc/music/widget/RepeatingImageButton;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3049
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/htc/music/widget/RepeatingImageButton;->requestFocus()Z

    .line 3052
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/music/HtcMusic;->scanBackward(IJ)V

    goto :goto_0

    .line 3055
    :sswitch_2
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_3

    .line 3058
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/htc/music/widget/RepeatingImageButton;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3059
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/htc/music/widget/RepeatingImageButton;->requestFocus()Z

    .line 3062
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/music/HtcMusic;->scanForward(IJ)V

    goto :goto_0

    .line 3066
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->toggleShuffle()V

    goto :goto_0

    .line 3039
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x2f -> :sswitch_3
        0x4c -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 2942
    sparse-switch p1, :sswitch_data_0

    .line 2992
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 2944
    :sswitch_0
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_0

    .line 2947
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_2

    .line 2948
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 2949
    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->canRewind()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2950
    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->prev()V

    .line 2960
    :cond_2
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 2961
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    goto :goto_1

    .line 2990
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2952
    :cond_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    goto :goto_2

    .line 2955
    :cond_4
    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/music/HtcMusic;->scanBackward(IJ)V

    .line 2957
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    goto :goto_2

    .line 2964
    :sswitch_1
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_0

    .line 2967
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_5

    .line 2968
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    if-nez v2, :cond_6

    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    .line 2969
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->next()V

    .line 2976
    :cond_5
    :goto_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 2977
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    goto :goto_1

    .line 2971
    :cond_6
    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/music/HtcMusic;->scanForward(IJ)V

    .line 2973
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    goto :goto_3

    .line 2980
    :sswitch_2
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 2981
    .local v0, searchManager:Landroid/app/SearchManager;
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    if-eqz v1, :cond_7

    .line 2982
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 2983
    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    goto/16 :goto_0

    .line 2985
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 2986
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/music/HtcMusic;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2942
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x54 -> :sswitch_2
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 1838
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->setIntent(Landroid/content/Intent;)V

    .line 1841
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1842
    const-string v4, "from-lockscreen"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1843
    .local v0, isFromLockscreen:Z
    const-string v4, "inner-transition"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1844
    .local v1, isInnerTransition:Z
    const-string v4, "[HtcMusic]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onNewIntent] from-lockscreen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    if-nez v1, :cond_0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1846
    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->disableKeyguard(Landroid/app/Activity;)V

    .line 1852
    .end local v0           #isFromLockscreen:Z
    .end local v1           #isInnerTransition:Z
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v4, :cond_2

    .line 1854
    const-string v4, "ShowNowPlaying"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1856
    .local v2, showNowPlaying:Z
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 1859
    .end local v2           #showNowPlaying:Z
    :cond_2
    if-eqz p1, :cond_4

    .line 1860
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1861
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 1862
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_3

    .line 1863
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->onServiceConnectedHandle()V

    .line 1868
    :cond_3
    const-string v4, "directmode"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 1869
    const-string v4, "[HtcMusic]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get (on new) intent directmode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    .end local v3           #uri:Landroid/net/Uri;
    :cond_4
    return-void

    .line 1848
    .restart local v0       #isFromLockscreen:Z
    .restart local v1       #isInnerTransition:Z
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 2456
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->onActionMenuSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2500
    :goto_0
    return v2

    .line 2460
    :cond_0
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    iget v4, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v3, :cond_1

    .line 2462
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v2, p1}, Lcom/htc/music/NowPlayingViewHelper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 2467
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2500
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 2469
    :sswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->launchProperty()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2497
    :catch_0
    move-exception v0

    .line 2498
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2473
    .end local v0           #ex:Ljava/lang/Exception;
    :sswitch_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, v2, v3}, Lcom/htc/music/HtcMusic;->launchDMR(IZ)V

    goto :goto_1

    .line 2477
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2478
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->launchGlobalSoundEffectSetting()V

    goto :goto_0

    .line 2481
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->showSoundEffectDialog()V

    goto :goto_0

    .line 2487
    :sswitch_3
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 2491
    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2493
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2467
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_3
        0x20 -> :sswitch_0
        0x25 -> :sswitch_1
        0x28 -> :sswitch_2
        0x29 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 2058
    const-string v2, "[HtcMusic]"

    const-string v3, "onPause"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v2, :cond_0

    .line 2060
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->onPause()V

    .line 2063
    :cond_0
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v2, :cond_1

    .line 2064
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v2}, Lcom/htc/music/NowPlayingViewHelper;->onPause()V

    .line 2067
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2069
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    .line 2071
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSoundEnhancerEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2072
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v2, p0}, Lcom/htc/music/util/HeadSetHelper;->stopMonitor(Landroid/content/Context;)V

    .line 2073
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-virtual {v2}, Lcom/htc/music/util/HdmiPlugReceiver;->deInitInstance()Z

    .line 2076
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2077
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2078
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x400001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2079
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Bypass][onPause] Set winParams.flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2089
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v2, :cond_3

    .line 2090
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v2}, Lcom/htc/music/GliderAdapter;->pauseDecoder()V

    .line 2093
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setDLNAPreloadEnable(Z)V

    .line 2095
    const-string v2, "[HtcMusic]"

    const-string v3, "onPause finished"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v3, 0x1

    .line 5291
    iput p1, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    .line 5292
    packed-switch p1, :pswitch_data_0

    .line 5396
    .end local p2
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 5294
    .restart local p2
    :pswitch_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5295
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5303
    .restart local p2
    :pswitch_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 5308
    .restart local p2
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/htc/music/HtcMusic;->prepareDownloadAlbumArtDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 5338
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initializeSoundEffectDialog()V

    goto :goto_0

    .line 5342
    :pswitch_5
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 5343
    .local v1, listview:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 5344
    iget v2, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 5345
    iget v2, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 5353
    .end local v1           #listview:Landroid/widget/ListView;
    .restart local p2
    :pswitch_6
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5368
    .restart local p2
    :pswitch_7
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 5370
    iget v2, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-nez v2, :cond_0

    .line 5373
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5374
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v2

    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 5376
    iget v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v2, :cond_1

    .line 5377
    const-string v2, "[HtcMusic]"

    const-string v3, "mCurrentAudioId < 0"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5384
    :catch_0
    move-exception v0

    .line 5385
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5386
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 5387
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 5388
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    goto/16 :goto_0

    .line 5381
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 5382
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 5292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2312
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->onPrepareActionMenu(Landroid/view/Menu;)V

    .line 2314
    iget-boolean v6, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v6, :cond_2

    .line 2315
    iget v4, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-eq v7, v4, :cond_0

    .line 2317
    invoke-interface {p1, v7}, Landroid/view/Menu;->removeGroup(I)V

    .line 2318
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2321
    :cond_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4, p1}, Lcom/htc/music/NowPlayingViewHelper;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    .line 2394
    :cond_1
    :goto_0
    return v4

    .line 2324
    :cond_2
    iget v6, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-eq v4, v6, :cond_3

    .line 2326
    invoke-interface {p1, v7}, Landroid/view/Menu;->removeGroup(I)V

    .line 2327
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2330
    :cond_3
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v6, :cond_1

    .line 2334
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v3

    .line 2337
    .local v3, nDlnaMode:I
    const/16 v6, 0x14

    :try_start_0
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2338
    .local v0, downloadAlbumArtMenu:Landroid/view/MenuItem;
    if-eqz v0, :cond_4

    .line 2339
    if-nez v3, :cond_5

    .line 2340
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v6

    iput v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 2341
    iget v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-ltz v6, :cond_1

    .line 2343
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2349
    :cond_4
    :goto_1
    iget-boolean v6, p0, Lcom/htc/music/HtcMusic;->mBlockMenu:Z

    if-ne v4, v6, :cond_b

    move v4, v5

    .line 2350
    goto :goto_0

    .line 2345
    :cond_5
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2356
    .end local v0           #downloadAlbumArtMenu:Landroid/view/MenuItem;
    :catch_0
    move-exception v1

    .line 2357
    .local v1, ex:Landroid/os/RemoteException;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 2358
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 2359
    iput v5, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    .line 2362
    .end local v1           #ex:Landroid/os/RemoteException;
    :goto_2
    const/4 v2, 0x0

    .line 2364
    .local v2, menuItem:Landroid/view/MenuItem;
    const/16 v6, 0x28

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2365
    if-eqz v2, :cond_7

    .line 2366
    if-eqz v3, :cond_6

    if-ne v4, v3, :cond_c

    .line 2368
    :cond_6
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2374
    :cond_7
    :goto_3
    const/16 v6, 0x15

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2375
    if-eqz v2, :cond_9

    .line 2376
    if-eqz v3, :cond_8

    if-ne v4, v3, :cond_d

    .line 2378
    :cond_8
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2384
    :cond_9
    :goto_4
    const/16 v6, 0x2e

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2385
    if-eqz v2, :cond_1

    .line 2386
    if-eqz v3, :cond_a

    if-ne v4, v3, :cond_e

    .line 2388
    :cond_a
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2353
    .end local v2           #menuItem:Landroid/view/MenuItem;
    .restart local v0       #downloadAlbumArtMenu:Landroid/view/MenuItem;
    :cond_b
    :try_start_1
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 2354
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2370
    .end local v0           #downloadAlbumArtMenu:Landroid/view/MenuItem;
    .restart local v2       #menuItem:Landroid/view/MenuItem;
    :cond_c
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 2380
    :cond_d
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 2390
    :cond_e
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1876
    const-string v8, "[HtcMusic]"

    const-string v9, "onResume +"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    const-string v8, "power"

    invoke-virtual {p0, v8}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 1881
    .local v6, pMgr:Landroid/os/PowerManager;
    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1882
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1979
    :goto_0
    return-void

    .line 1887
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doStart()V

    .line 1889
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v8, :cond_1

    .line 1890
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v8}, Lcom/htc/sunny2/view/SSurfaceView;->onResume()V

    .line 1893
    :cond_1
    const/4 v8, 0x2

    iget v9, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-eq v8, v9, :cond_2

    const/4 v8, 0x3

    iget v9, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-ne v8, v9, :cond_3

    .line 1894
    :cond_2
    const-string v8, "[HtcMusic]"

    const-string v9, "DMC/Push mode..."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    :cond_3
    iput-boolean v12, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 1901
    iget-boolean v8, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v8, :cond_4

    .line 1902
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v8}, Lcom/htc/music/NowPlayingViewHelper;->onResume()V

    .line 1905
    :cond_4
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    new-instance v9, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1908
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    if-eqz v8, :cond_5

    .line 1909
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v8}, Lcom/htc/music/HtcMusic;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1913
    :cond_5
    const/16 v8, 0x12

    invoke-virtual {p0, v8}, Lcom/htc/music/HtcMusic;->removeDialog(I)V

    .line 1914
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1916
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v8, :cond_6

    .line 1917
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v8}, Lcom/htc/music/GliderAdapter;->resumeDecoder()V

    .line 1920
    :cond_6
    iput-boolean v12, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    .line 1922
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSoundEnhancerEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1925
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1926
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v8}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPluggedCacheValue()Z

    move-result v3

    .line 1928
    .local v3, isWiredPluggedLastTime:Z
    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v2

    .line 1929
    .local v2, isWiredPlugged:Z
    if-eq v3, v2, :cond_7

    .line 1930
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->wiredHeadSetStatusChanged(Z)V

    .line 1943
    .end local v2           #isWiredPlugged:Z
    .end local v3           #isWiredPluggedLastTime:Z
    :cond_7
    :goto_1
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v8, p0, p0}, Lcom/htc/music/util/HeadSetHelper;->startMonitor(Landroid/content/Context;Lcom/htc/music/util/IMonitorHeadSetStatus;)V

    .line 1944
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-virtual {v8, p0, p0}, Lcom/htc/music/util/HdmiPlugReceiver;->initInstance(Landroid/content/Context;Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;)Z

    .line 1947
    :cond_8
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    .line 1948
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 1949
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v4

    .line 1950
    .local v4, next:J
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_9

    .line 1952
    :try_start_0
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1953
    invoke-direct {p0, v4, v5}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1958
    :cond_9
    :goto_2
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkedInternalStorageWhenResume(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1959
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto/16 :goto_0

    .line 1933
    .end local v4           #next:J
    :cond_a
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v8}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPluggedCacheValue()Z

    move-result v1

    .line 1935
    .local v1, headsetPreviousStatus:Z
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    .line 1938
    .local v0, headsetLatestStatus:Z
    if-eq v1, v0, :cond_7

    .line 1939
    invoke-virtual {p0, v0, v12}, Lcom/htc/music/HtcMusic;->headSetStatusChanged(ZZ)V

    goto :goto_1

    .line 1963
    .end local v0           #headsetLatestStatus:Z
    .end local v1           #headsetPreviousStatus:Z
    .restart local v4       #next:J
    :cond_b
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/htc/music/HtcMusic$20;

    invoke-direct {v8, p0}, Lcom/htc/music/HtcMusic$20;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1969
    .local v7, setHeadsetOwnerThread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1971
    iget-boolean v8, p0, Lcom/htc/music/HtcMusic;->mJustCreate:Z

    if-eqz v8, :cond_c

    .line 1972
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v8

    new-instance v9, Lcom/htc/music/HtcMusic$InitialUIIdlehandler;

    invoke-direct {v9, p0}, Lcom/htc/music/HtcMusic$InitialUIIdlehandler;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v8, v9}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1973
    iput-boolean v12, p0, Lcom/htc/music/HtcMusic;->mJustCreate:Z

    .line 1976
    :cond_c
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/htc/music/HtcMusic;->setDLNAPreloadEnable(Z)V

    .line 1978
    const-string v8, "[HtcMusic]"

    const-string v9, "onResume -"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1954
    .end local v7           #setHeadsetOwnerThread:Ljava/lang/Thread;
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1688
    const-string v1, "configchange"

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1689
    const-string v0, "message"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    const-string v0, "downloadalbumartid"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1692
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1694
    :cond_1
    const-string v0, "currentAudioId"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1695
    const-string v0, "currentAudioPath"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTextDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTextDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1699
    const-string v0, "shareText"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    :cond_3
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1703
    const-string v0, "tempSelectedEQIndex"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    :cond_4
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1708
    const-string v0, "tempShowingEQIndex"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    const-string v0, "tempSelectedSoundEffectIndex"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    iget-object v1, v1, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    :cond_5
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v0, :cond_6

    .line 1715
    const-string v0, "ringtoneAudioPath"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->getAudioPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    const-string v0, "ringtoneAudioId"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->getAudioId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1718
    const-string v0, "ringtoneAudioType"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->getAudioType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1722
    :cond_6
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->removeDialog(I)V

    .line 1723
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->removeDialog(I)V

    .line 1725
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1726
    return-void

    .line 1688
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onSelectionChange(I)V
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 6210
    new-instance v0, Lcom/htc/music/HtcMusic$39;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/HtcMusic$39;-><init>(Lcom/htc/music/HtcMusic;I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6215
    return-void
.end method

.method public onSelectionChangeUI(I)V
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 6219
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v0, :cond_0

    .line 6220
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/GliderAdapter;->onSelectionChanged(I)V

    .line 6222
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1730
    const-string v1, "[HtcMusic]"

    const-string v2, "[HtcMusic][onStart Begin]"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1733
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->dismissActiveDialog()V

    .line 1737
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1738
    .local v0, pMgr:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1747
    :goto_0
    return-void

    .line 1742
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doStart()V

    .line 1744
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->registerTVDisplayHelper()V

    .line 1746
    const-string v1, "[HtcMusic]"

    const-string v2, "[HtcMusic][onStart End]"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStateChange(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 6227
    new-instance v0, Lcom/htc/music/HtcMusic$40;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/HtcMusic$40;-><init>(Lcom/htc/music/HtcMusic;I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6232
    return-void
.end method

.method public onStateChangeUI(I)V
    .locals 8
    .parameter "nState"

    .prologue
    const/16 v7, 0x12

    const/4 v6, 0x1

    .line 6236
    iput p1, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    .line 6238
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_1

    .line 6276
    :cond_0
    :goto_0
    return-void

    .line 6240
    :cond_1
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v4, :cond_0

    .line 6243
    if-ne v7, p1, :cond_2

    .line 6244
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 6246
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAnimationStatus()Z

    move-result v3

    .line 6247
    .local v3, status:Z
    if-eqz v3, :cond_4

    .line 6248
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V

    .line 6263
    .end local v3           #status:Z
    :cond_2
    :goto_1
    const/4 v4, 0x3

    if-eq v4, p1, :cond_3

    const/16 v4, 0x9

    if-eq v4, p1, :cond_3

    const/16 v4, 0xb

    if-eq v4, p1, :cond_3

    const/4 v4, 0x2

    if-ne v4, p1, :cond_5

    .line 6267
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    .line 6268
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v4, :cond_0

    .line 6269
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6273
    :catch_0
    move-exception v0

    .line 6274
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 6249
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v3       #status:Z
    :cond_4
    :try_start_1
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    if-ne v6, v4, :cond_2

    .line 6250
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getSelection()I

    move-result v2

    .line 6251
    .local v2, position:I
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v4

    if-eq v4, v2, :cond_2

    .line 6252
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v4, :cond_2

    .line 6253
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/htc/music/HtcMusic$NonUiHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 6255
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 6256
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v1, v5, v6}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 6270
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #position:I
    .end local v3           #status:Z
    :cond_5
    if-ne v7, p1, :cond_0

    .line 6271
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onStop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1544
    const-string v2, "[HtcMusic]"

    const-string v3, "onStop"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1548
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 1549
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V

    .line 1553
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1554
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 1557
    :cond_1
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v2, :cond_3

    .line 1558
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v2}, Lcom/htc/music/NowPlayingViewHelper;->onStop()V

    .line 1560
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_2

    .line 1561
    const-string v2, "Music"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 1564
    :cond_2
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "NOW_PLAYING_SWITCH"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1566
    .local v1, nowPlayingViewOn:Z
    if-eqz v1, :cond_9

    .line 1569
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "NOW_PLAYING_SWITCH"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1576
    .end local v1           #nowPlayingViewOn:Z
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v2, :cond_4

    .line 1577
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v2, v5}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 1578
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 1579
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 1582
    :cond_4
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1583
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1585
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 1589
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1593
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mDMCServiceListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1598
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1603
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_5

    .line 1604
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->activityGoSleep()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1610
    :cond_5
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1611
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    if-eqz v2, :cond_6

    .line 1612
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 1613
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    .line 1615
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 1616
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1619
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_6
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1622
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mInitAP:Z

    .line 1623
    iput-object v6, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    .line 1624
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v2, :cond_7

    .line 1625
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    .line 1631
    :cond_7
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mStartActionFinished:Z

    .line 1633
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->releaseTVDisplayHelper()V

    .line 1635
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v2, :cond_8

    .line 1636
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->disconnect()V

    .line 1639
    :cond_8
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1640
    const-string v2, "[HtcMusic]"

    const-string v3, "onStop finished"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    return-void

    .line 1572
    .restart local v1       #nowPlayingViewOn:Z
    :cond_9
    invoke-virtual {p0, v4}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    goto/16 :goto_0

    .line 1605
    .end local v1           #nowPlayingViewOn:Z
    :catch_0
    move-exception v0

    .line 1606
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 1619
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 1617
    :catch_1
    move-exception v2

    .line 1619
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_6

    .line 1599
    :catch_2
    move-exception v2

    goto :goto_4

    .line 1594
    :catch_3
    move-exception v2

    goto :goto_3

    .line 1590
    :catch_4
    move-exception v2

    goto :goto_2

    .line 1586
    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method public plugOutBeatsHeadsetHandle()V
    .locals 4

    .prologue
    .line 6716
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6717
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 6720
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyleIndex(Landroid/content/Context;)I

    move-result v2

    .line 6722
    .local v2, styleIndex:I
    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    .line 6723
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    .line 6726
    const/4 v1, 0x0

    .line 6727
    .local v1, iResourceID:I
    const/4 v0, 0x1

    .line 6728
    .local v0, bShowToast:Z
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6731
    const/4 v0, 0x0

    .line 6762
    :goto_0
    if-eqz v0, :cond_1

    .line 6763
    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 6764
    :cond_1
    return-void

    .line 6739
    :cond_2
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6741
    const v1, 0x2040255

    goto :goto_0

    .line 6752
    :cond_3
    const v1, 0x7f0700a3

    goto :goto_0
.end method

.method prepareDownloadAlbumArtDialog(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 7675
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->queryUpdateAlbumArtSetting()Z

    move-result v0

    .line 7676
    .local v0, isAutoUpdate:Z
    invoke-virtual {p0, p1, v0}, Lcom/htc/music/HtcMusic;->syncAutoUpdateCheckBox(Landroid/app/Dialog;Z)V

    .line 7677
    invoke-virtual {p0, p1, v0}, Lcom/htc/music/HtcMusic;->syncUpdateAllAlbumArtItem(Landroid/app/Dialog;Z)V

    .line 7678
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->syncUpdateCurrentAlbum(Landroid/app/Dialog;)V

    .line 7679
    return-void
.end method

.method setAsResetCurrentItem(Lcom/htc/widget/HtcListItem;)V
    .locals 3
    .parameter "listItem"

    .prologue
    .line 7756
    const v1, 0x7f080024

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 7758
    .local v0, lineText:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 7759
    const v1, 0x7f0700f0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 7760
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 7761
    new-instance v1, Lcom/htc/music/HtcMusic$ResetCurrentAlbumClickListener;

    invoke-direct {v1, p0}, Lcom/htc/music/HtcMusic$ResetCurrentAlbumClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7762
    const-string v1, "[HtcMusic]"

    const-string v2, "reset current albumart enable"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7763
    return-void
.end method

.method setAsUpdateCurrentItem(Lcom/htc/widget/HtcListItem;)V
    .locals 3
    .parameter "listItem"

    .prologue
    .line 7746
    const v1, 0x7f080024

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 7748
    .local v0, lineText:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 7749
    const v1, 0x7f0700ef

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 7750
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 7751
    new-instance v1, Lcom/htc/music/HtcMusic$UpdateCurrentAlbumClickListener;

    invoke-direct {v1, p0}, Lcom/htc/music/HtcMusic$UpdateCurrentAlbumClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7752
    const-string v1, "[HtcMusic]"

    const-string v2, "update current albumart"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7753
    return-void
.end method

.method public setEQSelectedIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 7287
    iput p1, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    .line 7289
    return-void
.end method

.method public setNowPlayingVisible(Z)V
    .locals 8
    .parameter "setVisible"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 5628
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-ne v3, p1, :cond_1

    .line 5689
    :cond_0
    :goto_0
    return-void

    .line 5631
    :cond_1
    if-eqz p1, :cond_5

    .line 5632
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5633
    .local v0, intent:Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "com.htc.media/track"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5634
    const-string v3, "isnowplayinglist"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5636
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-nez v3, :cond_4

    .line 5637
    new-instance v3, Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {v3, p0}, Lcom/htc/music/NowPlayingViewHelper;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    .line 5638
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v3, v0, v7}, Lcom/htc/music/NowPlayingViewHelper;->onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 5643
    :goto_1
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v3}, Lcom/htc/music/NowPlayingViewHelper;->onStart()V

    .line 5644
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v3}, Lcom/htc/music/NowPlayingViewHelper;->onResume()V

    .line 5646
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->attachNowPlayingView()V

    .line 5661
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    :goto_2
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    .line 5663
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    if-eqz v3, :cond_0

    .line 5664
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v4, 0x2c

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 5665
    .local v1, queue:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v4, 0x2d

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 5667
    .local v2, soundhound:Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v3, :cond_7

    .line 5670
    if-eqz v1, :cond_3

    .line 5671
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5673
    :cond_3
    if-eqz v2, :cond_0

    .line 5674
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 5640
    .end local v1           #queue:Landroid/view/MenuItem;
    .end local v2           #soundhound:Landroid/view/MenuItem;
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v3, v0}, Lcom/htc/music/NowPlayingViewHelper;->onNewIntent(Landroid/content/Intent;)V

    .line 5641
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v3}, Lcom/htc/music/NowPlayingViewHelper;->onRestart()V

    goto :goto_1

    .line 5648
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v3, :cond_2

    .line 5649
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v3, :cond_6

    .line 5650
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setVisibility(Z)V

    .line 5652
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->requestLayout()V

    .line 5655
    :cond_6
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->detachNowPlayingView()V

    .line 5656
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v3}, Lcom/htc/music/NowPlayingViewHelper;->finish()V

    .line 5657
    iput-object v7, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    goto :goto_2

    .line 5680
    .restart local v1       #queue:Landroid/view/MenuItem;
    .restart local v2       #soundhound:Landroid/view/MenuItem;
    :cond_7
    if-eqz v1, :cond_8

    .line 5681
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5683
    :cond_8
    if-eqz v2, :cond_0

    .line 5684
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected setProgressTimeIndicator()V
    .locals 8

    .prologue
    .line 7903
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mProgressPopup:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 7905
    :try_start_0
    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v0

    .line 7906
    .local v0, pos:J
    :goto_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mProgressPopup:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-static {p0, v4, v5}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {p0, v4, v5}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7912
    .end local v0           #pos:J
    :cond_0
    :goto_1
    return-void

    .line 7905
    :cond_1
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7909
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected showNewDialog(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 7894
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/HtcMusic;->showNewDialog(ILandroid/os/Bundle;)V

    .line 7895
    return-void
.end method

.method protected showNewDialog(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "args"

    .prologue
    .line 7898
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->removeDialog(I)V

    .line 7899
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/HtcMusic;->showDialog(ILandroid/os/Bundle;)Z

    .line 7900
    return-void
.end method

.method public showSoundEffectDialog()V
    .locals 2

    .prologue
    const v1, 0x2040255

    .line 7004
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 7005
    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, mService is null!!! Can\'t show sound enhancer dialog."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7050
    :goto_0
    return-void

    .line 7013
    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7015
    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7016
    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, HDMI is plugged and Headset is Not plugged. return."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7026
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7027
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7033
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7034
    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7035
    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, Beats do not support HDMI out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7039
    :cond_2
    const v0, 0x7f0700a3

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7040
    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, Beats do not support Speaker out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7047
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    .line 7048
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    .line 7049
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 5
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 3081
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3082
    .local v2, mIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3083
    const-string v3, "content://servo_search/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3084
    const-string v3, "CATEGORY_ORDER"

    const-string v4, "media/audio"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3085
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3087
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 3088
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 3100
    :cond_0
    :goto_0
    return-void

    .line 3090
    :cond_1
    iget v3, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-nez v3, :cond_0

    .line 3091
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.music.intent.action.LOCALSEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3093
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3094
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method switchToDMP(Z)V
    .locals 9
    .parameter "isPlaying"

    .prologue
    .line 3411
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const-string v6, "com.htc.music.DMPMusicPlaybackService"

    invoke-interface {v5, v6}, Lcom/htc/music/IMediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    .line 3413
    const-string v5, "DLNA"

    const/4 v6, 0x5

    invoke-virtual {p0, v5, v6}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 3415
    .local v4, pref:Landroid/content/SharedPreferences;
    const-string v5, "switchDMP"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3417
    .local v0, Switch:Z
    if-eqz v0, :cond_2

    .line 3418
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3419
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->stop()V

    .line 3421
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3423
    .local v3, i:Landroid/content/Intent;
    const-string v5, "command"

    const-string v6, "com.htc.music.refreshplaylist"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3426
    const-string v2, ""

    .line 3427
    .local v2, emptyStr:Ljava/lang/String;
    const-string v5, "server"

    const-string v6, "server"

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3429
    const-string v5, "container"

    const-string v6, "container"

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3431
    const-string v5, "content"

    const-string v6, "content"

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3433
    const-string v5, "startIdx"

    const-string v6, "startIdx"

    const-wide/16 v7, -0x1

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3435
    const-string v5, "endIdx"

    const-string v6, "endIdx"

    const-wide/16 v7, -0x1

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3437
    const-string v5, "direction"

    const-string v6, "direction"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3440
    const-string v5, "dmsFilePath"

    const-string v6, "filepath"

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3444
    if-eqz p1, :cond_1

    .line 3445
    const-string v5, "forcePlay"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3447
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3449
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "switchDMP"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3455
    .end local v0           #Switch:Z
    .end local v2           #emptyStr:Ljava/lang/String;
    .end local v3           #i:Landroid/content/Intent;
    .end local v4           #pref:Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    return-void

    .line 3452
    :catch_0
    move-exception v1

    .line 3453
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method syncAutoUpdateCheckBox(Landroid/app/Dialog;Z)V
    .locals 3
    .parameter "dialog"
    .parameter "isAutoUpdate"

    .prologue
    .line 7682
    const v2, 0x7f08005d

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    .line 7684
    .local v1, autoUpdate:Lcom/htc/widget/HtcListItem;
    const v2, 0x7f080060

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcCheckBox;

    .line 7686
    .local v0, audoUpdateCheckBox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v0, :cond_0

    .line 7687
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 7689
    :cond_0
    return-void
.end method

.method syncUpdateAllAlbumArtItem(Landroid/app/Dialog;Z)V
    .locals 2
    .parameter "dialog"
    .parameter "isAutoUpdate"

    .prologue
    .line 7692
    const v1, 0x7f08005e

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem;

    .line 7694
    .local v0, updateAllAlbumArt:Lcom/htc/widget/HtcListItem;
    if-eqz v0, :cond_0

    .line 7695
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem;->setEnabled(Z)V

    .line 7697
    :cond_0
    return-void

    .line 7695
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method syncUpdateCurrentAlbum(Landroid/app/Dialog;)V
    .locals 11
    .parameter "dialog"

    .prologue
    .line 7700
    const/4 v7, 0x0

    .line 7702
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7703
    .local v0, resolver:Landroid/content/ContentResolver;
    iget v6, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 7704
    .local v6, currentAlbumId:I
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 7705
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v6

    .line 7706
    iput v6, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 7708
    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "dl_data"

    aput-object v4, v2, v1

    .line 7709
    .local v2, cols:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dl_album_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7711
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 7715
    const v1, 0x7f08005f

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItem;

    .line 7717
    .local v9, listItem:Lcom/htc/widget/HtcListItem;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7718
    const-string v1, "dl_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 7721
    .local v10, path:Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 7722
    :cond_1
    invoke-virtual {p0, v9}, Lcom/htc/music/HtcMusic;->setAsUpdateCurrentItem(Lcom/htc/widget/HtcListItem;)V

    .line 7726
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7738
    .end local v10           #path:Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_2

    .line 7739
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7740
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #currentAlbumId:I
    .end local v9           #listItem:Lcom/htc/widget/HtcListItem;
    :goto_2
    const/4 v7, 0x0

    .line 7743
    :cond_2
    return-void

    .line 7724
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #currentAlbumId:I
    .restart local v9       #listItem:Lcom/htc/widget/HtcListItem;
    .restart local v10       #path:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {p0, v9}, Lcom/htc/music/HtcMusic;->setAsResetCurrentItem(Lcom/htc/widget/HtcListItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 7730
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #currentAlbumId:I
    .end local v9           #listItem:Lcom/htc/widget/HtcListItem;
    .end local v10           #path:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 7731
    .local v8, ex:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught remote exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7738
    if-eqz v7, :cond_2

    .line 7739
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 7728
    .end local v8           #ex:Landroid/os/RemoteException;
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #currentAlbumId:I
    .restart local v9       #listItem:Lcom/htc/widget/HtcListItem;
    :cond_4
    :try_start_3
    invoke-virtual {p0, v9}, Lcom/htc/music/HtcMusic;->setAsUpdateCurrentItem(Lcom/htc/widget/HtcListItem;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 7733
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #currentAlbumId:I
    .end local v9           #listItem:Lcom/htc/widget/HtcListItem;
    :catch_1
    move-exception v8

    .line 7734
    .local v8, ex:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 7738
    if-eqz v7, :cond_2

    .line 7739
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 7738
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    .line 7739
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7740
    const/4 v7, 0x0

    .line 7738
    :cond_5
    throw v1
.end method

.method public wiredHeadSetStatusChanged(Z)V
    .locals 1
    .parameter "newStatus"

    .prologue
    .line 6487
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6522
    :cond_0
    return-void
.end method
