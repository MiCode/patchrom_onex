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
        Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;,
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

.field private mDmcPlaybackControlListener:Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;

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
    .line 231
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

    .line 149
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 161
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    .line 165
    iput v4, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 166
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    .line 167
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    .line 168
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 170
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 172
    iput v4, p0, Lcom/htc/music/HtcMusic;->mProgressPos:I

    .line 173
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 174
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 175
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    .line 177
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 181
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsSupportMMC:Z

    .line 183
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsMusicStoreEnable:Z

    .line 184
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 185
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    .line 186
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    .line 187
    iput v2, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    .line 188
    iput v4, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    .line 189
    iput v4, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    .line 193
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    .line 194
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    .line 195
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 198
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z

    .line 199
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsRWScanOn:Z

    .line 222
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mProgressPopup:Landroid/widget/TextView;

    .line 224
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    .line 232
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    .line 237
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 238
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 239
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 241
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    .line 242
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    .line 243
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mBlockMenu:Z

    .line 244
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    .line 245
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeDelayPlay:Z

    .line 246
    const/16 v0, 0x15e

    iput v0, p0, Lcom/htc/music/HtcMusic;->mDelayPlayDuration:I

    .line 256
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    .line 259
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    .line 260
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    .line 261
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    .line 264
    iput v4, p0, Lcom/htc/music/HtcMusic;->mScreenWidth:I

    .line 265
    iput v4, p0, Lcom/htc/music/HtcMusic;->mScreenHeight:I

    .line 273
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 274
    new-instance v0, Lcom/htc/music/HtcMusic$ControllerListener;

    invoke-direct {v0, p0, v3}, Lcom/htc/music/HtcMusic$ControllerListener;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mControllerListener:Lcom/htc/music/HtcMusic$ControllerListener;

    .line 275
    new-instance v0, Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;

    invoke-direct {v0, p0, v3}, Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDLNAServiceStatusListener:Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;

    .line 276
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsDLNAManagerConnected:Z

    .line 277
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    .line 278
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 279
    new-instance v0, Lcom/htc/music/HtcMusic$1;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$1;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHtcTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 394
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    .line 395
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    .line 396
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    .line 397
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTextDialog:Landroid/app/Dialog;

    .line 399
    iput v5, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 403
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mShowEmptyQueue:Z

    .line 406
    const-string v0, "com.htc.musicenhancer"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->MUSIC_ENHANCER_PACKAGE:Ljava/lang/String;

    .line 407
    const-string v0, "com.htc.musicenhancer.EnhancerService"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->MUSIC_ENHANCER_SERVICE:Ljava/lang/String;

    .line 410
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mIsPlaybackControlEnabled:Z

    .line 412
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 416
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    .line 418
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mDmcPlaybackControlListener:Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;

    .line 420
    new-instance v0, Lcom/htc/music/HtcMusic$2;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$2;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 431
    new-instance v0, Lcom/htc/music/HtcMusic$3;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$3;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 618
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    .line 619
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mVolumeSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 712
    new-instance v0, Lcom/htc/music/HtcMusic$6;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$6;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mVolumeDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 1143
    new-instance v0, Lcom/htc/music/HtcMusic$7;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$7;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1245
    new-instance v0, Lcom/htc/music/HtcMusic$8;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$8;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleListener:Landroid/view/View$OnClickListener;

    .line 1255
    new-instance v0, Lcom/htc/music/HtcMusic$9;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$9;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatListener:Landroid/view/View$OnClickListener;

    .line 1261
    new-instance v0, Lcom/htc/music/HtcMusic$10;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$10;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 1267
    new-instance v0, Lcom/htc/music/HtcMusic$11;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$11;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTooltipListener:Landroid/view/View$OnClickListener;

    .line 1282
    new-instance v0, Lcom/htc/music/HtcMusic$12;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$12;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mVolumeListener:Landroid/view/View$OnClickListener;

    .line 1312
    new-instance v0, Lcom/htc/music/HtcMusic$13;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$13;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mLibraryListener:Landroid/view/View$OnClickListener;

    .line 1381
    new-instance v0, Lcom/htc/music/HtcMusic$14;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$14;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRecommendListener:Landroid/view/View$OnClickListener;

    .line 1387
    new-instance v0, Lcom/htc/music/HtcMusic$15;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$15;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 1417
    new-instance v0, Lcom/htc/music/HtcMusic$16;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$16;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mNextListener:Landroid/view/View$OnClickListener;

    .line 1445
    new-instance v0, Lcom/htc/music/HtcMusic$17;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$17;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRewListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    .line 1467
    new-instance v0, Lcom/htc/music/HtcMusic$18;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$18;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mFfwdListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    .line 1496
    new-instance v0, Lcom/htc/music/HtcMusic$19;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$19;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackOptionListener:Landroid/view/View$OnClickListener;

    .line 1548
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    .line 1549
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    .line 1762
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mStartActionFinished:Z

    .line 1988
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mJustCreate:Z

    .line 1989
    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mUINotInit:Z

    .line 2196
    iput v4, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    .line 2249
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    .line 2526
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z

    .line 2879
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

    .line 2960
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 3018
    iput v4, p0, Lcom/htc/music/HtcMusic;->avi:I

    .line 3403
    new-instance v0, Lcom/htc/music/HtcMusic$22;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$22;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->osc:Landroid/content/ServiceConnection;

    .line 3944
    new-instance v0, Lcom/htc/music/HtcMusic$23;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$23;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    .line 4108
    new-instance v0, Lcom/htc/music/HtcMusic$24;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$24;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDMCServiceListener:Landroid/content/BroadcastReceiver;

    .line 4246
    new-instance v0, Lcom/htc/music/HtcMusic$25;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$25;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 4555
    new-instance v0, Lcom/htc/music/HtcMusic$26;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$26;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    .line 4601
    new-instance v0, Lcom/htc/music/HtcMusic$27;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$27;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mCircleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4886
    new-instance v0, Lcom/htc/music/HtcMusic$28;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$28;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 5651
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    .line 5652
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    .line 6319
    new-instance v0, Lcom/htc/music/HtcMusic$41;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$41;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDMRChooserAction:Landroid/view/View$OnClickListener;

    .line 6343
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    .line 6344
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    .line 6349
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    .line 6351
    const-string v0, "SoundStyle"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->SetSoundEffectKey:Ljava/lang/String;

    .line 6355
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    .line 6360
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6361
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 6363
    new-instance v0, Lcom/htc/music/util/HeadSetHelper;

    invoke-direct {v0}, Lcom/htc/music/util/HeadSetHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    .line 6364
    new-instance v0, Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-direct {v0}, Lcom/htc/music/util/HdmiPlugReceiver;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    .line 6366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    .line 6367
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    .line 6368
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    .line 6370
    new-instance v0, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    .line 6386
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mBestsStrWithBeatsHeadset:Ljava/lang/String;

    .line 6387
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mBestsStrNotBeatsHeadset:Ljava/lang/String;

    .line 7016
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    .line 7017
    iput v5, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    .line 7324
    iput v4, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    .line 7325
    iput v5, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    .line 7573
    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    .line 8066
    new-instance v0, Lcom/htc/music/HtcMusic$53;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$53;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    return-void

    .line 2879
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

.method static synthetic access$1000(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/htc/music/HtcMusic;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->toggleShuffle()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->cycleRepeat()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doPauseResume()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    return p1
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/HtcMusic;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/htc/music/HtcMusic;->launchDMR(IZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->music_tooltip_preference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/HtcMusic;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->createVolumeDialog()V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/music/HtcMusic;)Lcom/htc/wrap/android/media/HtcWrapAudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startBrowserTabActivity()V

    return-void
.end method

.method static synthetic access$2602(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsRWScanOn:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->stopFFRWScan(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2802(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->showSetContactRingtoneToast()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->handleTVReadyToPlay()V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->onServiceConnectedHandle()V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initialUI()V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/music/HtcMusic;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/music/HtcMusic;)Lcom/htc/music/widget/SoundEffectAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput p1, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    return p1
.end method

.method static synthetic access$3800(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->changeNowPlayingMode()V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/music/HtcMusic;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/music/HtcMusic;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    return v0
.end method

.method static synthetic access$4800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    return-void
.end method

.method static synthetic access$5000(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    return-void
.end method

.method static synthetic access$5100(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mUINotInit:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$5300(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    return p1
.end method

.method static synthetic access$5600(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/ActionBarText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->setSecondaryTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    return v0
.end method

.method static synthetic access$6100(Lcom/htc/music/HtcMusic;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->onAnimationRotateSelf(Z)V

    return-void
.end method

.method static synthetic access$6200(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateGlider()V

    return-void
.end method

.method static synthetic access$6300(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->getAlbumQueuePosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->handleDMCError(I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->setRepeatMode(I)V

    return-void
.end method

.method static synthetic access$6700(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    return-void
.end method

.method static synthetic access$6800(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->resetTimeout()V

    return-void
.end method

.method static synthetic access$7000(Lcom/htc/music/HtcMusic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/HtcMusic;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->shareMusicFile()V

    return-void
.end method

.method static synthetic access$7200(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->startAlbumDetail(I)V

    return-void
.end method

.method static synthetic access$7300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->addtoPlaylist()V

    return-void
.end method

.method static synthetic access$7400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doSearch()V

    return-void
.end method

.method static synthetic access$7500(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->chooseShareType()V

    return-void
.end method

.method static synthetic access$7600(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRingtone()V

    return-void
.end method

.method static synthetic access$7700(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    return v0
.end method

.method static synthetic access$7800(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    return v0
.end method

.method static synthetic access$7902(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput p1, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    return p1
.end method

.method static synthetic access$7908(Lcom/htc/music/HtcMusic;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/music/HtcMusic;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    return-wide v0
.end method

.method static synthetic access$8000(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/htc/music/HtcMusic;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$802(Lcom/htc/music/HtcMusic;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    return-wide p1
.end method

.method static synthetic access$8100(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->SetSoundEffectKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->showHideOneShotMode()V

    return-void
.end method

.method static synthetic access$8300(Lcom/htc/music/HtcMusic;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mShowEmptyQueue:Z

    return v0
.end method

.method static synthetic access$8500(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTrackInfoP()V

    return-void
.end method

.method static synthetic access$8600(Lcom/htc/music/HtcMusic;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/util/SoundEffectItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    return-object v0
.end method

.method static synthetic access$8702(Lcom/htc/music/HtcMusic;Lcom/htc/music/util/SoundEffectItem;)Lcom/htc/music/util/SoundEffectItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    return-object p1
.end method

.method static synthetic access$8800(Lcom/htc/music/HtcMusic;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8900(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    return v0
.end method

.method static synthetic access$8902(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput p1, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/htc/music/HtcMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Lcom/htc/music/HtcMusic;->mProgressPos:I

    return v0
.end method

.method static synthetic access$9000(Lcom/htc/music/HtcMusic;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/music/HtcMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput p1, p0, Lcom/htc/music/HtcMusic;->mProgressPos:I

    return p1
.end method

.method static synthetic access$9100(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startAutoDownloadAlbum()V

    return-void
.end method

.method static synthetic access$9200(Lcom/htc/music/HtcMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->autoUpdateAlbumArt(I)V

    return-void
.end method

.method static synthetic access$9300(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->stopDownloadAlbumArtService()V

    return-void
.end method

.method static synthetic access$9400(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startUpdateAllAlbum()V

    return-void
.end method

.method static synthetic access$9500(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateCurrentAlbum()V

    return-void
.end method

.method static synthetic access$9600(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->resetCurrentAlbumArt()V

    return-void
.end method

.method static synthetic access$9702(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsDLNAManagerConnected:Z

    return p1
.end method

.method static synthetic access$9800(Lcom/htc/music/HtcMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    return v0
.end method

.method static synthetic access$9802(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    return p1
.end method

.method private addtoPlaylist()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2756
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 2758
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 2759
    const/16 v2, 0x15

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 2770
    :goto_0
    return-void

    .line 2762
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2763
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2764
    const-string v2, "pickermode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2765
    new-array v0, v4, [I

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v3

    aput v3, v0, v2

    .line 2766
    .local v0, addToPlaylistData:[I
    const-string v2, "AddToPlaylistData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2768
    invoke-virtual {p0, v1, v4}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private animationRefresh()V
    .locals 5

    .prologue
    .line 3790
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3791
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3792
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3793
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3801
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 3796
    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->activityWakeup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3800
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateGlider()V

    goto :goto_0

    .line 3797
    :catch_0
    move-exception v0

    .line 3798
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private attachNowPlayingView()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 5724
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5728
    .local v2, nowPlayingLayoutparams:Landroid/widget/RelativeLayout$LayoutParams;
    const v3, 0x7f080068

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5729
    .local v0, glanceContainer:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 5730
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v3}, Lcom/htc/music/NowPlayingViewHelper;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 5731
    .local v1, nowPlaying:Landroid/view/ViewGroup;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5732
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 5734
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v3, :cond_0

    .line 5735
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setVisibility(Z)V

    .line 5737
    .end local v1           #nowPlaying:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private autoUpdateAlbumArt(I)V
    .locals 4
    .parameter "isChecked"

    .prologue
    .line 7533
    const-string v2, "[HtcMusic]"

    const-string v3, "autoUpdateAlbumArt"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7534
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7535
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 7536
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "auto_download"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7537
    sget-object v2, Lcom/htc/musicenhancer/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 7538
    return-void
.end method

.method private buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "szExtra"

    .prologue
    .line 4225
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    .line 4226
    .local v2, szTitleInfo:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 4227
    .local v1, nDlnaMode:I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 4228
    :cond_0
    if-nez p1, :cond_2

    .line 4231
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getPlayerName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4232
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

    .line 4243
    :cond_1
    :goto_0
    return-object v2

    .line 4233
    :catch_0
    move-exception v0

    .line 4234
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4238
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

    .line 4241
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

    .line 4933
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    iget v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->checkSizeLimit(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4935
    if-eqz p2, :cond_0

    .line 4936
    const v4, 0x7f0700af

    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 4971
    :cond_0
    :goto_0
    return v3

    .line 4941
    :cond_1
    const/4 v2, 0x0

    .line 4942
    .local v2, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4945
    iget v5, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v5}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 4946
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 4948
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 4949
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4952
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4953
    const-string v5, "mime_type"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4955
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4960
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_3
    if-eqz p1, :cond_4

    if-ne p1, v4, :cond_7

    :cond_4
    move v0, v4

    .line 4963
    .local v0, canUseAsRingtone:Z
    :goto_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 4964
    if-eqz v0, :cond_5

    .line 4965
    const-string v5, "audio/x-wma-drm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move v0, v4

    .line 4968
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    .line 4969
    const v3, 0x7f0700b0

    invoke-direct {p0, v3}, Lcom/htc/music/HtcMusic;->showToast(I)V

    :cond_6
    move v3, v0

    .line 4971
    goto :goto_0

    .end local v0           #canUseAsRingtone:Z
    :cond_7
    move v0, v3

    .line 4960
    goto :goto_1

    .restart local v0       #canUseAsRingtone:Z
    :cond_8
    move v0, v3

    .line 4965
    goto :goto_2
.end method

.method private changeNowPlayingMode()V
    .locals 1

    .prologue
    .line 1506
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 1507
    return-void

    .line 1506
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private chooseShareType()V
    .locals 1

    .prologue
    .line 2794
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 2795
    return-void
.end method

.method private cleanMessage()V
    .locals 2

    .prologue
    .line 4880
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4881
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4883
    :cond_0
    return-void
.end method

.method private clearSoundEffectParameters()V
    .locals 1

    .prologue
    .line 6845
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 6846
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6847
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    .line 6848
    return-void
.end method

.method private closeDMC()V
    .locals 3

    .prologue
    .line 1511
    const-string v1, "[HtcMusic]"

    const-string v2, "DMC power off"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 1516
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1517
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 1529
    :goto_0
    return-void

    .line 1519
    :cond_0
    const-string v1, "[HtcMusic]"

    const-string v2, "Current mode is not dmc or push mode, cancel close dmc"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1526
    :catch_0
    move-exception v0

    .line 1527
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1522
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
    .line 7889
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7890
    .local v2, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x204009d

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7891
    new-instance v0, Lcom/htc/music/HtcMusic$ConnectionFailDialogClickListener;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$ConnectionFailDialogClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    .line 7892
    .local v0, clickListener:Lcom/htc/music/HtcMusic$ConnectionFailDialogClickListener;
    const v3, 0x2040178

    invoke-virtual {v2, v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7893
    const v3, 0x2040152

    new-instance v4, Lcom/htc/music/HtcMusic$52;

    invoke-direct {v4, p0}, Lcom/htc/music/HtcMusic$52;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7900
    const v3, 0x204009e

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7901
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 7902
    .local v1, dialog:Landroid/app/Dialog;
    return-object v1
.end method

.method private createDownloadAlbumArtDialog()Landroid/app/Dialog;
    .locals 14

    .prologue
    .line 7463
    const/4 v9, 0x0

    .line 7464
    .local v9, dialog:Landroid/app/Dialog;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7465
    .local v0, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f03001c

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 7467
    .local v1, dialogView:Landroid/view/View;
    const v2, 0x7f0700ee

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7468
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7469
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7470
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7471
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v9

    .line 7473
    const v2, 0x7f08005d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListItem;

    .line 7475
    .local v6, autoUpdate:Lcom/htc/widget/HtcListItem;
    const-string v2, "list_selector_background"

    const-string v3, "com.htc.R.drawable.list_selector_background"

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcListItem;->setBackgroundResource(I)V

    .line 7478
    const v2, 0x7f080024

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItem2LineText;

    .line 7480
    .local v7, autoUpdateTextView:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 7481
    const v2, 0x7f0700ef

    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 7482
    const v2, 0x7f080060

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcCheckBox;

    .line 7484
    .local v8, checkBox:Lcom/htc/widget/HtcCheckBox;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 7485
    new-instance v2, Lcom/htc/music/HtcMusic$50;

    invoke-direct {v2, p0, v8}, Lcom/htc/music/HtcMusic$50;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7503
    const v2, 0x7f08005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcListItem;

    .line 7505
    .local v10, updateAllAlbum:Lcom/htc/widget/HtcListItem;
    const-string v2, "list_selector_background"

    const-string v3, "com.htc.R.drawable.list_selector_background"

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcListItem;->setBackgroundResource(I)V

    .line 7508
    const v2, 0x7f080024

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/htc/widget/HtcListItem2LineText;

    .line 7510
    .local v11, updateAllAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 7511
    const v2, 0x7f0700f2

    invoke-virtual {v11, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 7512
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcListItem;->setClickable(Z)V

    .line 7513
    new-instance v2, Lcom/htc/music/HtcMusic$51;

    invoke-direct {v2, p0}, Lcom/htc/music/HtcMusic$51;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7520
    const v2, 0x7f08005f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/htc/widget/HtcListItem;

    .line 7522
    .local v12, updateCurrAlbum:Lcom/htc/widget/HtcListItem;
    const-string v2, "list_selector_background"

    const-string v3, "com.htc.R.drawable.list_selector_background"

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/htc/widget/HtcListItem;->setBackgroundResource(I)V

    .line 7525
    const v2, 0x7f080024

    invoke-virtual {v12, v2}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcListItem2LineText;

    .line 7527
    .local v13, updateCurrAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 7528
    const v2, 0x7f0700f1

    invoke-virtual {v13, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 7529
    return-object v9
.end method

.method private createEqualizerDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 7330
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7333
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 7335
    .local v1, resource:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7339
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    new-instance v4, Lcom/htc/music/HtcMusic$46;

    invoke-direct {v4, p0}, Lcom/htc/music/HtcMusic$46;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7352
    const v2, 0x2040151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$47;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$47;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7370
    const v2, 0x2040152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$48;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$48;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7381
    new-instance v2, Lcom/htc/music/HtcMusic$49;

    invoke-direct {v2, p0}, Lcom/htc/music/HtcMusic$49;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7390
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 7393
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v2
.end method

.method private createSoundEffectDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 7101
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 7102
    const-string v2, "[HtcMusic]"

    const-string v4, "createSoundEffectDialog, mService is null."

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 7288
    :goto_0
    return-object v2

    .line 7106
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 7109
    .local v9, resource:Landroid/content/res/Resources;
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAudioEffect()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7117
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7118
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7120
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 7121
    .local v7, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f030056

    invoke-virtual {v7, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 7124
    .local v1, textEntryView:Landroid/view/View;
    const v3, 0x7f0800af

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 7127
    .local v8, list:Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initializeSoundEffectDialog()V

    .line 7129
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    if-nez v3, :cond_1

    .line 7130
    new-instance v3, Lcom/htc/music/widget/SoundEffectAdapter;

    const v4, 0x7f030055

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5}, Lcom/htc/music/widget/SoundEffectAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    .line 7134
    :cond_1
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    invoke-virtual {v8, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7136
    new-instance v3, Lcom/htc/music/HtcMusic$42;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$42;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v8, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move v3, v2

    move v4, v2

    move v5, v2

    .line 7194
    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7196
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7197
    new-instance v2, Lcom/htc/music/HtcMusic$43;

    invoke-direct {v2, p0}, Lcom/htc/music/HtcMusic$43;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7207
    const v2, 0x2040151

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$44;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$44;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7270
    const v2, 0x2040152

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$45;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$45;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7282
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 7284
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setOnSoundEffectDismissListener(Landroid/app/Dialog;)V

    .line 7288
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 7110
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #textEntryView:Landroid/view/View;
    .end local v7           #factory:Landroid/view/LayoutInflater;
    .end local v8           #list:Landroid/widget/ListView;
    :catch_0
    move-exception v6

    .line 7111
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

    .line 7114
    goto/16 :goto_0
.end method

.method private createVolumeDialog()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const-wide v11, 0x3fc53f7ced916873L

    const/4 v10, 0x0

    .line 622
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    if-nez v7, :cond_0

    .line 623
    new-instance v7, Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    .line 626
    :cond_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07018d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setTextViewText(ILjava/lang/String;)V

    .line 629
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v7, v10}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v7

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 630
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mVolumeSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v7, v10, v8}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setSeekbarSeekListener(ILandroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 631
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v7, v13}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setCanceledOnTouchOutside(Z)V

    .line 632
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mVolumeDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 634
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 635
    .local v6, windowSize:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 636
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v7, v10}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v4

    .line 637
    .local v4, view:Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 638
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 641
    .local v0, config:Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v13, :cond_1

    .line 642
    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-double v7, v7

    mul-double/2addr v7, v11

    double-to-int v7, v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 647
    :goto_0
    const/4 v5, 0x0

    .line 649
    .local v5, volume:I
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 653
    :goto_1
    if-nez v5, :cond_3

    .line 654
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "com.android.internal.R.drawable.zzzz_icon_launcher_profile_silent"

    invoke-static {v8}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 656
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 657
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v7, v10, v1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 670
    :goto_2
    new-instance v7, Lcom/htc/music/HtcMusic$5;

    invoke-direct {v7, p0}, Lcom/htc/music/HtcMusic$5;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 708
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcMultiSeekBarDialog;->showByGravity(I)V

    .line 709
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->resetTimeout()V

    .line 710
    return-void

    .line 644
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #volume:I
    :cond_1
    iget v7, v6, Landroid/graphics/Point;->y:I

    int-to-double v7, v7

    mul-double/2addr v7, v11

    double-to-int v7, v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 650
    .restart local v5       #volume:I
    :catch_0
    move-exception v2

    .line 651
    .local v2, ex:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 659
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

    .line 662
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "com.android.internal.R.drawable.zzzz_icon_launcher_sound_display"

    invoke-static {v8}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 664
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 665
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v7, v10, v1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 667
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

    .line 3274
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 3297
    :goto_0
    return-void

    .line 3278
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    .line 3279
    .local v0, mode:I
    if-nez v0, :cond_1

    .line 3280
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 3281
    const v1, 0x7f070055

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 3293
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    goto :goto_0

    .line 3294
    .end local v0           #mode:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3282
    .restart local v0       #mode:I
    :cond_1
    if-ne v0, v2, :cond_3

    .line 3283
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 3284
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 3285
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 3286
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 3288
    :cond_2
    const v1, 0x7f070054

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_1

    .line 3290
    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 3291
    const v1, 0x7f070053

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private detachNowPlayingView()V
    .locals 3

    .prologue
    .line 5740
    const v2, 0x7f080068

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5741
    .local v0, glanceContainer:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 5742
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 5744
    .local v1, nowPlayingIndex:I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 5747
    .end local v1           #nowPlayingIndex:I
    :cond_0
    return-void
.end method

.method private doPauseResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 3211
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_0

    .line 3212
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3213
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 3214
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    .line 3215
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    .line 3234
    :goto_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 3238
    :cond_0
    :goto_1
    return-void

    .line 3217
    :cond_1
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3220
    .local v0, isMirrorPlayOnTV:Z
    :goto_2
    if-eqz v0, :cond_3

    .line 3221
    const-string v3, "[HtcMusic]"

    const-string v4, "doPauseResume TV is on"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3222
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->handleTVReadyToPlay()V

    goto :goto_1

    .line 3236
    .end local v0           #isMirrorPlayOnTV:Z
    :catch_0
    move-exception v3

    goto :goto_1

    :cond_2
    move v0, v3

    .line 3217
    goto :goto_2

    .line 3226
    .restart local v0       #isMirrorPlayOnTV:Z
    :cond_3
    const-string v3, "[HtcMusic]"

    const-string v4, "doPauseResume TV is off"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3227
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 3228
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    .line 3229
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v1

    .line 3230
    .local v1, next:J
    invoke-direct {p0, v1, v2}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private doSearch()V
    .locals 2

    .prologue
    .line 2773
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    return-void
.end method

.method private doStart()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1764
    const-string v5, "[HtcMusic]"

    const-string v6, "[HtcMusic][doStart Begin]"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    iget-boolean v5, p0, Lcom/htc/music/HtcMusic;->mStartActionFinished:Z

    if-eqz v5, :cond_0

    .line 1839
    :goto_0
    return-void

    .line 1766
    :cond_0
    iput-boolean v9, p0, Lcom/htc/music/HtcMusic;->mStartActionFinished:Z

    .line 1770
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1771
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_1

    .line 1772
    const-string v5, "directmode"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 1773
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

    .line 1776
    :cond_1
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v5, :cond_2

    .line 1777
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 1779
    :cond_2
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1780
    iput-boolean v9, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    .line 1781
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1783
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1784
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    .line 1789
    :cond_3
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1790
    .local v2, f2:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1791
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1792
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1793
    const-string v5, "file"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1794
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1796
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1797
    .local v1, f:Landroid/content/IntentFilter;
    const-string v5, "com.htc.music.playstatechanged"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1798
    const-string v5, "com.htc.music.metachanged"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1799
    const-string v5, "com.htc.music.playbackcomplete"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1800
    const-string v5, "com.htc.music.rotateleft"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1801
    const-string v5, "com.htc.music.rotateright"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1802
    const-string v5, "com.htc.music.rotatecircle_next"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1803
    const-string v5, "com.htc.music.rotatecircle_previous"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1804
    const-string v5, "com.htc.music.rotatequickly"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1805
    const-string v5, "com.htc.music.queuechanged"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1806
    const-string v5, "com.htc.music.shuffle"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1807
    const-string v5, "com.htc.music.refresh"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1808
    const-string v5, "com.htc.music.changeart"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1809
    const-string v5, "com.htc.music.onerror"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1810
    const-string v5, "com.broadcom.bluetooth.avrcp"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1811
    const-string v5, "com.htc.music.pluginservicebinded"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1812
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v5, v6}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1814
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1815
    .local v3, fDMCSvc:Landroid/content/IntentFilter;
    const-string v5, "com.htc.music.dmcservice.released"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1816
    const-string v5, "com.htc.music.dmcservice.repeat_changed"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1817
    const-string v5, "com.htc.music.dmcservice.shuffle_changed"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1818
    const-string v5, "com.htc.music.dmcservice.dlna_connected"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1819
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDMCServiceListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1821
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1822
    .local v0, dlArtFilter:Landroid/content/IntentFilter;
    const-string v5, "action_complete_one_download"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1823
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1825
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    .line 1826
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 1828
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isConnectionFail(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1829
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_4

    .line 1830
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1834
    :cond_4
    iget-boolean v5, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v5, :cond_5

    .line 1835
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v5}, Lcom/htc/music/NowPlayingViewHelper;->onStart()V

    .line 1838
    :cond_5
    const-string v5, "[HtcMusic]"

    const-string v6, "[HtcMusic][doStart End]"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getAlbumQueuePosition()I
    .locals 3

    .prologue
    .line 4872
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4875
    :goto_0
    return v1

    .line 4873
    :catch_0
    move-exception v0

    .line 4874
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "[HtcMusic]"

    const-string v2, " getAlbumQueuePosition() : "

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4875
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private handleDMCError(I)V
    .locals 3
    .parameter "errorId"

    .prologue
    const/16 v1, 0x18

    const/4 v2, 0x1

    .line 7829
    packed-switch p1, :pswitch_data_0

    .line 7878
    const-string v0, "[HtcMusic]"

    const-string v1, "handle dmc error - unknown error"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7879
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    .line 7885
    :goto_0
    return-void

    .line 7831
    :pswitch_0
    const v0, 0x7f070068

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7832
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto :goto_0

    .line 7837
    :pswitch_1
    const v0, 0x7f0700e0

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7838
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto :goto_0

    .line 7843
    :pswitch_2
    const v0, 0x7f0700e1

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_0

    .line 7848
    :pswitch_3
    const v0, 0x7f0700d6

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7849
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto :goto_0

    .line 7854
    :pswitch_4
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isConnectionFail(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7855
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 7857
    :cond_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 7863
    :pswitch_5
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isConnectionFail(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7864
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 7866
    :cond_1
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 7872
    :pswitch_6
    const v0, 0x7f0700df

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7873
    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto :goto_0

    .line 7829
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

    .line 8087
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v5, :cond_0

    .line 8124
    :goto_0
    return-void

    .line 8091
    :cond_0
    const/4 v1, 0x0

    .line 8092
    .local v1, isDMCOrPush:Z
    const/4 v2, 0x0

    .line 8094
    .local v2, isQueueEmpty:Z
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v1

    .line 8095
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 8096
    .local v4, queueLength:I
    if-gtz v4, :cond_1

    .line 8097
    const/4 v2, 0x1

    .line 8103
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

    .line 8105
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 8106
    iget-boolean v5, p0, Lcom/htc/music/HtcMusic;->mIsDLNAManagerConnected:Z

    if-nez v5, :cond_2

    .line 8107
    iput-boolean v9, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    .line 8108
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mControllerListener:Lcom/htc/music/HtcMusic$ControllerListener;

    invoke-virtual {v5, v6}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V

    .line 8109
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mDLNAServiceStatusListener:Lcom/htc/music/HtcMusic$DLNAMusicServiceStatusListener;

    invoke-virtual {v5, v6}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->connect(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z

    goto :goto_0

    .line 8099
    :catch_0
    move-exception v0

    .line 8100
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 8111
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    new-instance v3, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v3}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    .line 8112
    .local v3, notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    iput v9, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 8113
    const-string v5, "com.htc.music.PLAYBACK_VIEWER"

    iput-object v5, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 8114
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 8115
    const-string v5, "HtcMusic"

    iput-object v5, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 8117
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v5, v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    .line 8119
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    goto :goto_0

    .line 8122
    .end local v3           #notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :cond_3
    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mNeedSetRendererAsDongle:Z

    goto :goto_0
.end method

.method private initConstant()V
    .locals 3

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 860
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 861
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 862
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/htc/music/HtcMusic;->mScreenWidth:I

    .line 863
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/htc/music/HtcMusic;->mScreenHeight:I

    .line 873
    return-void
.end method

.method private initGlider()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 849
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-nez v0, :cond_0

    .line 850
    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 851
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 853
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 854
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 856
    :cond_0
    return-void
.end method

.method private initPlayerInfo()V
    .locals 8

    .prologue
    .line 922
    const v3, 0x7f080014

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    .line 923
    const v3, 0x7f080015

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    .line 925
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 927
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f080037

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    .line 928
    const v3, 0x7f080038

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    .line 930
    const v3, 0x7f080056

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRimImageButton;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    .line 932
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v3, :cond_0

    .line 933
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

    .line 937
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    const v4, 0x7f020026

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 938
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Lcom/htc/widget/HtcRimImageButton;

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mTrackOptionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 941
    :cond_0
    const v3, 0x7f08006d

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcSeekBar;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    .line 942
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030052

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 943
    .local v1, popupContent:Landroid/view/View;
    const v3, 0x7f0800ab

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mProgressPopup:Landroid/widget/TextView;

    .line 944
    new-instance v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;-><init>(Landroid/content/Context;)V

    .line 945
    .local v0, mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBarPopupWindowListener;
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->setContentView(Landroid/view/View;)V

    .line 946
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcSeekBar;->setHtcSeekBarPopupWindowListener(Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;)V

    .line 947
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 949
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    .line 950
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcSeekBar;->setDisplayMode(I)V

    .line 953
    const v3, 0x7f080069

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    .line 954
    return-void
.end method

.method private initPresentation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 881
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-nez v0, :cond_0

    .line 919
    :goto_0
    return-void

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v0, :cond_1

    .line 891
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 893
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SSurfaceView;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 895
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAlpha(I)V

    .line 896
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setEdgeItemScrollRatio(F)V

    .line 897
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnSelectionChangeListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;)V

    .line 898
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnStateListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;)V

    .line 899
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledReflection(Z)V

    .line 900
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setShiftOneItemMode(Z)V

    .line 902
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-nez v0, :cond_2

    .line 912
    new-instance v0, Lcom/htc/music/GliderAdapter;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/GliderAdapter;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    .line 914
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V

    .line 915
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnLayoutListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;)V

    goto :goto_0

    .line 917
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/GliderAdapter;->reload()V

    goto :goto_0
.end method

.method private initSoundEnhancer()V
    .locals 2

    .prologue
    .line 1138
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v0, v1}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    .line 1141
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

    .line 959
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/RepeatingImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    .line 962
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    if-nez v0, :cond_0

    .line 963
    const-string v0, "[HtcMusic]"

    const-string v1, "can;t find task_bar_imgbtn_2 is our glance layout!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 969
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    const v1, 0x20800c0

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RepeatingImageButton;->setIconResource(I)V

    .line 970
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

    .line 977
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableFfRw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRewListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v1, v9, v10}, Lcom/htc/music/widget/RepeatingImageButton;->setRepeatListener(Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;J)V

    .line 982
    :cond_1
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    .line 983
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

    .line 987
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcRimImageButton;->requestFocus()Z

    .line 988
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 990
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/RepeatingImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    .line 993
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    if-nez v0, :cond_2

    .line 994
    const-string v0, "[HtcMusic]"

    const-string v1, "can;t find task_bar_imgbtn_4 is our glance layout!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1000
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    const v1, 0x20800b4

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RepeatingImageButton;->setIconResource(I)V

    .line 1001
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

    .line 1008
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableFfRw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1009
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mFfwdListener:Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v1, v9, v10}, Lcom/htc/music/widget/RepeatingImageButton;->setRepeatListener(Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;J)V

    .line 1013
    :cond_3
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    .line 1014
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v0, :cond_4

    .line 1015
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mShuffleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1016
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcImageButton;->setFocusable(Z)V

    .line 1017
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 1022
    :goto_0
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    .line 1023
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v0, :cond_5

    .line 1024
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRepeatListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1025
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcImageButton;->setFocusable(Z)V

    .line 1026
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 1030
    :goto_1
    return-void

    .line 1019
    :cond_4
    const-string v0, "[HtcMusic]"

    const-string v1, "initRightpanel, mShuffleButton is null."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1028
    :cond_5
    const-string v0, "[HtcMusic]"

    const-string v1, "initRightpanel, mRepeatButton is null."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initTitleBar()V
    .locals 2

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 1058
    :goto_0
    return-void

    .line 1040
    :cond_0
    new-instance v0, Lcom/htc/widget/ActionBarText;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    .line 1042
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 1043
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 1045
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 1048
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    .line 1051
    const-string v0, " "

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->setSecondaryTitle(Ljava/lang/String;)V

    .line 1055
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 1056
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mLibraryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initToolTip()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1102
    sget-object v3, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    invoke-virtual {p0, v3, v7}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->music_tooltip_preference:Landroid/content/SharedPreferences;

    .line 1106
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

    .line 1110
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isMusicStoreEnabled(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsMusicStoreEnable:Z

    .line 1111
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsMusicStoreEnable:Z

    if-nez v3, :cond_0

    .line 1112
    iput-boolean v7, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    .line 1116
    :cond_0
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    if-nez v3, :cond_1

    .line 1117
    const v3, 0x7f08006f

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 1118
    .local v2, hit_stub:Landroid/view/ViewStub;
    invoke-virtual {v2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1120
    const/4 v0, 0x0

    .line 1121
    .local v0, hint_toast_library:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 1122
    .local v1, hint_toast_playlisy:Landroid/widget/TextView;
    const v3, 0x7f080070

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    .line 1123
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1124
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    const v3, 0x7f080075

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #hint_toast_library:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 1126
    .restart local v0       #hint_toast_library:Landroid/widget/TextView;
    const v3, 0x7f0700c4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1127
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTooltipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    const v3, 0x7f080076

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #hint_toast_playlisy:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 1129
    .restart local v1       #hint_toast_playlisy:Landroid/widget/TextView;
    const v3, 0x7f0700c5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1130
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTooltipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1131
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/16 v6, 0x12c

    invoke-static {v3, v4, v5, v7, v6}, Lcom/htc/music/util/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)V

    .line 1135
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

    .line 1991
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-nez v7, :cond_0

    .line 1992
    const-string v7, "[HtcMusic]"

    const-string v8, "mNonUiHandler is null, this means activity should be destroyed!! return directly"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    :goto_0
    return-void

    .line 1997
    :cond_0
    const v7, 0x7f080068

    invoke-virtual {p0, v7}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1998
    .local v2, mainContainer:Landroid/view/View;
    if-nez v2, :cond_1

    .line 1999
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2000
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v7, 0x7f030027

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2001
    const v7, 0x7f080033

    invoke-virtual {p0, v7}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2002
    .local v0, group:Landroid/view/ViewGroup;
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2008
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initConstant()V

    .line 2009
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPresentation()V

    .line 2010
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPlayerInfo()V

    .line 2012
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTaskbar()V

    .line 2013
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTitleBar()V

    .line 2014
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initToolTip()V

    .line 2017
    .end local v0           #group:Landroid/view/ViewGroup;
    .end local v1           #inflator:Landroid/view/LayoutInflater;
    :cond_1
    const/16 v7, 0x12

    iput v7, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    .line 2019
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    .line 2020
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 2022
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    .line 2023
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 2024
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 2025
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 2027
    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mUINotInit:Z

    .line 2028
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->onServiceConnectedHandle()V

    .line 2030
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v3

    .line 2031
    .local v3, next:J
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v7, :cond_2

    .line 2033
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2034
    invoke-direct {p0, v3, v4}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2039
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v7, :cond_3

    .line 2040
    new-instance v5, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v5}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 2041
    .local v5, phadeIn:Lcom/htc/sunny2/view/animation/SAnimationController;
    new-instance v6, Lcom/htc/music/HtcMusic$PhadeAnimationListener;

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-direct {v6, v7, v8, v9}, Lcom/htc/music/HtcMusic$PhadeAnimationListener;-><init>(Lcom/htc/sunny2/view/SView;Landroid/os/Handler;Z)V

    .line 2042
    .local v6, phadeInAnimation:Lcom/htc/music/HtcMusic$PhadeAnimationListener;
    invoke-virtual {v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 2043
    const/16 v7, 0xff

    invoke-virtual {v5, v10, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 2044
    const-wide/16 v7, 0x12c

    invoke-virtual {v5, v7, v8}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 2046
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v7, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 2049
    .end local v5           #phadeIn:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v6           #phadeInAnimation:Lcom/htc/music/HtcMusic$PhadeAnimationListener;
    :cond_3
    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/16 v9, 0x12c

    invoke-static {v2, v7, v8, v10, v9}, Lcom/htc/music/util/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)V

    goto/16 :goto_0

    .line 2035
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private initializeSoundEffectDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 6851
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->initializeSoundEffectStyles()V

    .line 6853
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6857
    const/4 v2, 0x0

    .line 6858
    .local v2, item:Lcom/htc/music/util/SoundEffectItem;
    const-string v3, ""

    .line 6859
    .local v3, seStyle:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_2

    .line 6860
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v6, v0

    .line 6862
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6863
    new-instance v2, Lcom/htc/music/util/SoundEffectItem;

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    invoke-direct {v2, v3}, Lcom/htc/music/util/SoundEffectItem;-><init>(Ljava/lang/String;)V

    .line 6878
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectIconResourceId(ILandroid/content/Context;)I

    move-result v6

    iput v6, v2, Lcom/htc/music/util/SoundEffectItem;->mEffectIconResId:I

    .line 6882
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6859
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6865
    :cond_0
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v6, v0, :cond_1

    .line 6868
    new-instance v2, Lcom/htc/music/util/SoundEffectItem;

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    invoke-direct {v2, v3}, Lcom/htc/music/util/SoundEffectItem;-><init>(Ljava/lang/String;)V

    .line 6869
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v6, v6, v8

    iput-object v6, v2, Lcom/htc/music/util/SoundEffectItem;->mEqualizerStyle:Ljava/lang/String;

    .line 6870
    iput-boolean v9, v2, Lcom/htc/music/util/SoundEffectItem;->mNeedButton:Z

    .line 6871
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    invoke-virtual {v2, v6}, Lcom/htc/music/util/SoundEffectItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 6873
    :cond_1
    new-instance v2, Lcom/htc/music/util/SoundEffectItem;

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    invoke-direct {v2, v3}, Lcom/htc/music/util/SoundEffectItem;-><init>(Ljava/lang/String;)V

    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    goto :goto_1

    .line 6891
    .end local v0           #i:I
    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    .end local v3           #seStyle:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v6, v7}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v4

    .line 6894
    .local v4, selectedStyleIndex:I
    const/4 v2, 0x0

    .line 6896
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 6897
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v1

    .line 6914
    .local v1, isBeatHeadset:Z
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_14

    .line 6915
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    check-cast v2, Lcom/htc/music/util/SoundEffectItem;

    .line 6917
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    if-ne v4, v0, :cond_6

    .line 6918
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    if-eqz v6, :cond_3

    .line 6919
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    invoke-virtual {v6, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6922
    :cond_3
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6923
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    .line 6928
    :goto_3
    if-eqz v1, :cond_8

    .line 6930
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_4

    .line 6931
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mBestsStrWithBeatsHeadset:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/htc/music/util/SoundEffectItem;->setText(Ljava/lang/String;)V

    .line 6933
    :cond_4
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    if-eq v0, v6, :cond_5

    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_7

    .line 6935
    :cond_5
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    .line 6914
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6925
    :cond_6
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    goto :goto_3

    .line 6937
    :cond_7
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_4

    .line 6940
    :cond_8
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_9

    .line 6941
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mBestsStrNotBeatsHeadset:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/htc/music/util/SoundEffectItem;->setText(Ljava/lang/String;)V

    .line 6943
    :cond_9
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    if-eq v0, v6, :cond_a

    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_b

    .line 6945
    :cond_a
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_4

    .line 6947
    :cond_b
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_4

    .line 6951
    .end local v0           #i:I
    .end local v1           #isBeatHeadset:Z
    :cond_c
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_13

    .line 6952
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/htc/music/util/SoundEffectItem;
    check-cast v2, Lcom/htc/music/util/SoundEffectItem;

    .line 6953
    .restart local v2       #item:Lcom/htc/music/util/SoundEffectItem;
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    if-eqz v6, :cond_f

    .line 6954
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    iget-object v7, v2, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 6955
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    if-eqz v6, :cond_d

    .line 6956
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    invoke-virtual {v6, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6959
    :cond_d
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6960
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    .line 6978
    :goto_6
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    if-ne v0, v6, :cond_12

    .line 6979
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    .line 6951
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 6962
    :cond_e
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    goto :goto_6

    .line 6965
    :cond_f
    if-ne v4, v0, :cond_11

    .line 6966
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    if-eqz v6, :cond_10

    .line 6967
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    invoke-virtual {v6, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6970
    :cond_10
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6971
    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    goto :goto_6

    .line 6973
    :cond_11
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    goto :goto_6

    .line 6981
    :cond_12
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_7

    .line 6985
    :cond_13
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentEqualizerStyleIndex(Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    .line 6988
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    sget v7, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/util/SoundEffectItem;

    .line 6990
    .local v5, soundEQItem:Lcom/htc/music/util/SoundEffectItem;
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    sget v7, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    aget-object v6, v6, v7

    iput-object v6, v5, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    .line 6992
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    if-eqz v6, :cond_17

    .line 6993
    const/4 v6, -0x1

    iget v7, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    if-ne v6, v7, :cond_16

    .line 6994
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/htc/music/util/SoundEffectItem;->setEqualizerStyle(Ljava/lang/String;)V

    .line 6996
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;->setSelectedIndex(I)V

    .line 6997
    iget v6, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    iput v6, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    .line 7008
    :goto_8
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    .line 7011
    .end local v5           #soundEQItem:Lcom/htc/music/util/SoundEffectItem;
    :cond_14
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    if-eqz v6, :cond_15

    .line 7012
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    invoke-virtual {v6}, Lcom/htc/music/widget/SoundEffectAdapter;->notifyDataSetChanged()V

    .line 7014
    :cond_15
    return-void

    .line 6999
    .restart local v5       #soundEQItem:Lcom/htc/music/util/SoundEffectItem;
    :cond_16
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/htc/music/util/SoundEffectItem;->setEqualizerStyle(Ljava/lang/String;)V

    .line 7001
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;->setSelectedIndex(I)V

    goto :goto_8

    .line 7004
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
    .line 1345
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1347
    .local v1, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 1348
    const-string v2, "com.htc.dmc.ACTION_AUTO_SEARCH_RENDERER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1349
    const-string v2, "cookie"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1356
    :goto_0
    const-string v2, "directmode"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1359
    const/16 v2, 0x25

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    :goto_1
    return-void

    .line 1352
    :cond_0
    const-string v2, "com.htc.dmc"

    const-string v3, "com.htc.dmc.DmrListActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1353
    const-string v2, "cookie"

    const-string v3, "HtcMusic"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1360
    :catch_0
    move-exception v0

    .line 1361
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[HtcMusic]"

    const-string v3, "launchDMR, start DMR list activity fail"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private launchGlobalSoundEffectSetting()V
    .locals 3

    .prologue
    .line 7020
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7021
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7022
    const v1, 0x2040255

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7023
    const-string v1, "[HtcMusic]"

    const-string v2, "launchGlobalSoundEffectSetting, Beats do not support HDMI out."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7034
    :goto_0
    return-void

    .line 7026
    :cond_0
    const v1, 0x7f0700a4

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7027
    const-string v1, "[HtcMusic]"

    const-string v2, "launchGlobalSoundEffectSetting, Beats do not support Speaker out."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7032
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.HtcSoundEnhancerSetting.ShowSettingPage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7033
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private launchProperty()V
    .locals 2

    .prologue
    .line 2847
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 2848
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2850
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2851
    const-class v1, Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2852
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 2857
    :goto_0
    return-void

    .line 2854
    :cond_0
    const-class v1, Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2855
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private localizeEqualizerStyle([Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "eqStyles"

    .prologue
    const/4 v11, 0x0

    .line 7397
    if-nez p1, :cond_0

    .line 7398
    const-string v10, "[HtcMusic]"

    const-string v11, "localizeEqualizerStyles, eqStyles should not be null!"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7399
    const/4 p1, 0x0

    .line 7437
    .end local p1
    :goto_0
    return-object p1

    .line 7402
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 7403
    .local v8, resource:Landroid/content/res/Resources;
    const v10, 0x7f060019

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 7406
    .local v2, eqStylesFromRes:[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 7407
    const-string v10, "[HtcMusic]"

    const-string v11, "localizeEqualizerStyles, eqStylesFromRes should not be null!"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7412
    :cond_1
    sget-object v10, Lcom/htc/music/util/SoundEffectHelper;->EQStylesNotFromDevice:[Ljava/lang/String;

    array-length v5, v10

    .line 7413
    .local v5, iEQNotFromDeviceSize:I
    array-length v4, p1

    .line 7414
    .local v4, iEQFromDeviceSize:I
    add-int v1, v4, v5

    .line 7416
    .local v1, eqStyleNum:I
    new-array v7, v1, [Ljava/lang/String;

    .line 7417
    .local v7, localizedEQStyles:[Ljava/lang/String;
    new-array v9, v1, [Ljava/lang/String;

    .line 7418
    .local v9, totalEQ:[Ljava/lang/String;
    invoke-static {p1, v11, v9, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7419
    sget-object v10, Lcom/htc/music/util/SoundEffectHelper;->EQStylesNotFromDevice:[Ljava/lang/String;

    invoke-static {v10, v11, v9, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7421
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 7422
    const/4 v0, -0x1

    .line 7423
    .local v0, correspondingPos:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    sget-object v10, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    array-length v10, v10

    if-ge v6, v10, :cond_2

    .line 7424
    sget-object v10, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    aget-object v10, v10, v6

    aget-object v11, v9, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 7425
    move v0, v6

    .line 7426
    aget-object v10, v2, v6

    aput-object v10, v7, v3

    .line 7421
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7429
    :cond_3
    const/4 v10, -0x1

    if-ne v0, v10, :cond_4

    .line 7430
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

    .line 7432
    aget-object v10, v9, v3

    aput-object v10, v7, v3

    .line 7423
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v0           #correspondingPos:I
    .end local v6           #j:I
    :cond_5
    move-object p1, v7

    .line 7437
    goto :goto_0
.end method

.method private onActionMenuSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2414
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    move v5, v6

    .line 2472
    :goto_0
    return v5

    .line 2417
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->closeDMC()V

    goto :goto_0

    .line 2421
    :sswitch_1
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    .line 2422
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x3a9a

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2424
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->changeNowPlayingMode()V

    goto :goto_0

    .line 2436
    :sswitch_2
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    if-nez v7, :cond_1

    .line 2437
    const-string v7, "[HtcMusic]"

    const-string v8, "mSoundHoundIntent is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2438
    goto :goto_0

    .line 2441
    :cond_1
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2442
    :catch_0
    move-exception v2

    .line 2443
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "[HtcMusic]"

    const-string v7, "can\'t find SoundHound activity!!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2448
    .end local v2           #e:Ljava/lang/Exception;
    :sswitch_3
    new-array v1, v5, [Ljava/lang/String;

    .line 2449
    .local v1, dataPathArray:[Ljava/lang/String;
    iget v7, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v7}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v0

    .line 2450
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 2451
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 2452
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2453
    const-string v7, "_data"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 2454
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2455
    const/4 v0, 0x0

    .line 2462
    :cond_2
    new-instance v4, Ljava/lang/String;

    const-string v6, "com.htc.vmm.service.VMMEngineService"

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2464
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

    .line 2465
    :catch_1
    move-exception v3

    .line 2467
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

    goto/16 :goto_0

    .line 2457
    .end local v3           #ex:Ljava/lang/SecurityException;
    .end local v4           #szAction:Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2458
    const/4 v0, 0x0

    .line 2459
    goto/16 :goto_0

    .line 2414
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
    .line 4579
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    .line 4599
    :goto_0
    return-void

    .line 4583
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

    .line 4585
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    .line 4588
    :cond_1
    iget v2, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 4589
    .local v0, bAnimated:Z
    :goto_1
    if-nez v0, :cond_3

    .line 4590
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 4591
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4596
    .end local v0           #bAnimated:Z
    :catch_0
    move-exception v1

    .line 4597
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4588
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 4594
    .restart local v0       #bAnimated:Z
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    .line 4595
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

    .line 2252
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2253
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 2285
    :cond_0
    :goto_0
    return-void

    .line 2255
    :cond_1
    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    .line 2257
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.soundhound.android.ID_NOW_EXTERNAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    .line 2258
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const/high16 v3, 0x1400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2259
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const-string v3, "com.soundhound.android.EXTRA_ID_NOW_TOKEN"

    const-string v4, "htc"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2260
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const-string v3, "com.melodis.midomiMusicIdentifier"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2261
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    invoke-static {p0, v2}, Lcom/htc/music/util/CustomizeSetting;->isStorePackageExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    .line 2262
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    if-nez v2, :cond_2

    .line 2263
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    const-string v3, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2264
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundHoundIntent:Landroid/content/Intent;

    invoke-static {p0, v2}, Lcom/htc/music/util/CustomizeSetting;->isStorePackageExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    .line 2266
    :cond_2
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    if-eqz v2, :cond_3

    .line 2267
    const/16 v2, 0x2d

    const v3, 0x7f0701d1

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02003c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2272
    :cond_3
    const v2, 0x7f0700f5

    invoke-interface {p1, v5, v8, v7, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02002b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2274
    .local v1, queue:Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSupportSoundHound:Z

    if-nez v2, :cond_4

    .line 2275
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 2278
    :cond_4
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2279
    const/16 v2, 0x2e

    const v3, 0x7f0700f6

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

    .line 2288
    const/16 v3, 0x2c

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2289
    .local v2, queue:Landroid/view/MenuItem;
    if-nez v2, :cond_1

    .line 2290
    const-string v3, "[HtcMusic]"

    const-string v4, "can\'t find queue menu item!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    :cond_0
    :goto_0
    return-void

    .line 2294
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 2295
    .local v1, dlnaMode:I
    if-nez v1, :cond_4

    .line 2296
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v3, :cond_3

    .line 2297
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2305
    :goto_1
    const/16 v3, 0x2e

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2306
    .local v0, close:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 2307
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    .line 2309
    :cond_2
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2299
    .end local v0           #close:Landroid/view/MenuItem;
    :cond_3
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2302
    :cond_4
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2311
    .restart local v0       #close:Landroid/view/MenuItem;
    :cond_5
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private onServiceConnectedHandle()V
    .locals 23

    .prologue
    .line 3481
    const-string v20, "[HtcMusic]"

    const-string v21, "onServiceConnectedHandle() + "

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 3668
    :cond_0
    :goto_0
    return-void

    .line 3483
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mUINotInit:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 3485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 3486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 3489
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 3490
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->initSoundEnhancer()V

    .line 3494
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 3495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 3501
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

    .line 3504
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

    .line 3508
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 3509
    const-string v20, "[HtcMusic]"

    const-string v21, "Enter DirectMode ..."

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3511
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic;->launchDMR(IZ)V

    .line 3513
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 3514
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 3515
    .local v12, intent:Landroid/content/Intent;
    if-eqz v12, :cond_6

    .line 3516
    const-string v20, "directmode"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3523
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

    .line 3524
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 3587
    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 3588
    .local v13, intent1:Landroid/content/Intent;
    const-string v10, ""

    .line 3589
    .local v10, filename:Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 3590
    .local v19, uri:Landroid/net/Uri;
    const/4 v14, 0x0

    .line 3591
    .local v14, isDRM:Z
    if-eqz v19, :cond_c

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_c

    .line 3592
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    .line 3593
    .local v18, scheme:Ljava/lang/String;
    const-string v20, "file"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 3594
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 3596
    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/htc/music/util/DrmUtils;->DRMV2_VerifyRights(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v7

    .line 3598
    .local v7, drmValidRights:Z
    if-nez v7, :cond_a

    .line 3599
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto/16 :goto_0

    .line 3519
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

    .line 3527
    :pswitch_0
    :try_start_0
    const-string v20, "DLNA"

    const/16 v21, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 3529
    .local v17, pref:Landroid/content/SharedPreferences;
    const-string v20, "content"

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3530
    .local v5, content:Ljava/lang/String;
    const-string v20, "switchLocal"

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 3534
    .local v4, bSwitch:Z
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_7

    if-eqz v5, :cond_7

    .line 3535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 3536
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 3537
    .local v11, index:I
    const-string v20, "[HtcMusic]"

    const-string v21, "DLNA_LOCAL mode"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3538
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

    .line 3540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lcom/htc/music/IMediaPlaybackService;->setQueuePosition(I)V

    .line 3541
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

    .line 3543
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

    .line 3546
    .end local v4           #bSwitch:Z
    .end local v5           #content:Ljava/lang/String;
    .end local v11           #index:I
    .end local v17           #pref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v8

    .line 3547
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 3552
    .end local v8           #e:Landroid/os/RemoteException;
    :pswitch_1
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->switchToDMP(Z)V

    goto/16 :goto_2

    .line 3557
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 3559
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v20

    if-nez v20, :cond_7

    .line 3560
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->switchToPUSH(Landroid/content/Context;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 3562
    :catch_1
    move-exception v8

    .line 3563
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v20, "[HtcMusic]"

    const-string v21, "DLNA_PUSH RemoteException in mService.isDmcOrPushMode()"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3564
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 3568
    .end local v8           #e:Landroid/os/RemoteException;
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 3570
    const/16 v20, 0x0

    :try_start_2
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    .line 3571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v20

    if-nez v20, :cond_7

    .line 3572
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->switchToDMC(Landroid/content/Context;Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 3574
    :catch_2
    move-exception v8

    .line 3575
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v20, "[HtcMusic]"

    const-string v21, "DLNA_DMC RemoteException in mService.isDmcOrPushMode()"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3576
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 3604
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v10       #filename:Ljava/lang/String;
    .restart local v13       #intent1:Landroid/content/Intent;
    .restart local v14       #isDRM:Z
    .restart local v18       #scheme:Ljava/lang/String;
    .restart local v19       #uri:Landroid/net/Uri;
    :cond_9
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3612
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 3613
    .local v6, curPath:Ljava/lang/String;
    if-eqz v6, :cond_b

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 3614
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/HtcMusic;->mActivityPopup:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 3620
    .end local v6           #curPath:Ljava/lang/String;
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    .line 3621
    if-eqz v10, :cond_c

    const-string v20, "content://drm/"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 3622
    const/4 v14, 0x1

    .line 3628
    .end local v18           #scheme:Ljava/lang/String;
    :cond_c
    if-eqz v14, :cond_10

    .line 3629
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    move/from16 v20, v0

    if-nez v20, :cond_f

    if-eqz v19, :cond_f

    .line 3630
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->checkDrmFile(Landroid/net/Uri;)V

    .line 3643
    :cond_d
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->showHideOneShotMode()V

    .line 3645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    .line 3646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 3647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v20, v0

    const v21, 0x2080001

    invoke-virtual/range {v20 .. v21}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setGlobalBackgroundResource(I)V

    .line 3667
    :cond_e
    :goto_5
    const-string v20, "[HtcMusic]"

    const-string v21, "onServiceConnectedHandle() - "

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3616
    .restart local v18       #scheme:Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 3617
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 3632
    .end local v8           #e:Ljava/lang/Exception;
    .end local v18           #scheme:Ljava/lang/String;
    :cond_f
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    .line 3634
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v15

    .line 3636
    .local v15, next:J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 3637
    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    .line 3638
    :catch_4
    move-exception v9

    .line 3639
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

    .line 3651
    .end local v9           #ex:Ljava/lang/Exception;
    .end local v15           #next:J
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    .line 3661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    .line 3662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 3663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 3524
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

    .line 7541
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7542
    .local v0, resolver:Landroid/content/ContentResolver;
    new-array v2, v7, [Ljava/lang/String;

    const-string v1, "auto_download"

    aput-object v1, v2, v8

    .line 7543
    .local v2, mSettingColumns:[Ljava/lang/String;
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7546
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7547
    const-string v1, "auto_download"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    move v1, v7

    .line 7551
    :goto_0
    return v1

    :cond_0
    move v1, v8

    .line 7547
    goto :goto_0

    :cond_1
    move v1, v8

    .line 7551
    goto :goto_0
.end method

.method private queueNextRefresh(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 3868
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    if-nez v1, :cond_0

    .line 3869
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 3870
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3871
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3872
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3875
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private recoverNoEffectWithHDMI()V
    .locals 5

    .prologue
    .line 6801
    const/4 v1, 0x0

    .line 6804
    .local v1, recoverOriginal:Z
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6805
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 6806
    const/4 v1, 0x1

    .line 6810
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6811
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 6812
    const/4 v1, 0x1

    .line 6817
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v0

    .line 6820
    .local v0, currentSoundSetting:I
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    if-eq v0, v2, :cond_2

    .line 6821
    const/4 v1, 0x1

    .line 6826
    :cond_2
    iget v2, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    if-eq v2, v3, :cond_3

    .line 6827
    const/4 v1, 0x1

    .line 6830
    :cond_3
    if-eqz v1, :cond_4

    .line 6831
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V

    .line 6838
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    .line 6839
    const-string v2, "Original"

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    .line 6840
    const v2, 0x2040255

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 6842
    :cond_4
    return-void
.end method

.method private refreshNow()J
    .locals 12

    .prologue
    .line 3878
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v8, :cond_0

    .line 3879
    const-wide/16 v6, 0x1f4

    .line 3941
    :goto_0
    return-wide v6

    .line 3881
    :cond_0
    :try_start_0
    iget-wide v8, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v2

    .line 3882
    .local v2, pos:J
    :goto_1
    const-wide/16 v8, 0x3e8

    const-wide/16 v10, 0x3e8

    rem-long v10, v2, v10

    sub-long v6, v8, v10

    .line 3883
    .local v6, remaining:J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-ltz v8, :cond_7

    iget-wide v8, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    .line 3886
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollY()I

    move-result v8

    if-lez v8, :cond_1

    .line 3887
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

    .line 3892
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->scrollTo(II)V

    .line 3894
    :cond_1
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    const-wide/16 v9, 0x3e8

    div-long v9, v2, v9

    invoke-static {p0, v9, v10}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3897
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollY()I

    move-result v8

    if-lez v8, :cond_2

    .line 3898
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

    .line 3901
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->scrollTo(II)V

    .line 3909
    :cond_2
    iget-wide v8, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long v10, v2, v10

    sub-long v4, v8, v10

    .line 3911
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

    .line 3915
    const-wide/16 v8, 0x3e8

    mul-long v0, v8, v2

    .line 3916
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

    .line 3919
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_3

    .line 3920
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->getBufferingPercent()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    div-int/lit8 v9, v9, 0x64

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcSeekBar;->setSecondaryProgress(I)V

    .line 3934
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->setProgressTimeIndicator()V

    goto/16 :goto_0

    .line 3938
    .end local v2           #pos:J
    .end local v6           #remaining:J
    :catch_0
    move-exception v8

    .line 3941
    :goto_5
    const-wide/16 v6, 0x1f4

    goto/16 :goto_0

    .line 3881
    :cond_4
    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    goto/16 :goto_1

    .line 3911
    .restart local v2       #pos:J
    .restart local v4       #remain:J
    .restart local v6       #remaining:J
    :cond_5
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 3916
    .end local v4           #remain:J
    .restart local v0       #number:J
    :cond_6
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    goto :goto_3

    .line 3924
    .end local v0           #number:J
    :cond_7
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    const-string v9, "--:--"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3925
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    const-string v9, "--:--"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3926
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 3928
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3929
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcSeekBar;->setSecondaryProgress(I)V

    goto :goto_4

    .line 3939
    .end local v2           #pos:J
    .end local v6           #remaining:J
    :catch_1
    move-exception v8

    goto :goto_5

    .line 3931
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
    .line 1654
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-nez v1, :cond_0

    .line 1655
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHtcTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    invoke-direct {v1, p0, v2}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;-><init>(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 1661
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1662
    .local v0, fDLNA:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.triggerplayinlibrary"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1663
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1664
    return-void

    .line 1658
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
    .line 1667
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->release()V

    .line 1669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 1676
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1679
    :goto_1
    return-void

    .line 1672
    :cond_0
    const-string v0, "[HtcMusic]"

    const-string v1, "releaseTVDisplayHelper, mTVHelper is null, no need to release."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1677
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private resetCurrentAlbumArt()V
    .locals 11

    .prologue
    .line 7633
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 7634
    const-string v1, "[HtcMusic]"

    const-string v4, "mService is null while resetCurrentAlbumArt "

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7670
    :cond_0
    :goto_0
    return-void

    .line 7637
    :cond_1
    const-string v1, "[HtcMusic]"

    const-string v4, "resetCurrentAlbum"

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7639
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7640
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v6

    .line 7641
    .local v6, currentAlbumId:I
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "dl_data"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "dl_data_backup"

    aput-object v4, v2, v1

    .line 7643
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

    .line 7645
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 7648
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7649
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 7650
    .local v10, values:Landroid/content/ContentValues;
    const-string v1, "dl_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 7652
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

    .line 7653
    const-string v1, "dl_data"

    const-string v4, ""

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7654
    const-string v1, "dl_data_backup"

    invoke-virtual {v10, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7655
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7657
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7659
    .end local v9           #original_path:Ljava/lang/String;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_2
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v1, :cond_0

    .line 7660
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v4, 0x0

    invoke-virtual {v1, v6, v4}, Lcom/htc/music/GliderAdapter;->setDlAlbumArt(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 7662
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #currentAlbumId:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 7663
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

    .line 7665
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 7666
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

    .line 749
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 750
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 752
    return-void
.end method

.method private scanBackward(IJ)V
    .locals 12
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    const-wide/16 v10, 0x0

    .line 3126
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_1

    .line 3167
    :cond_0
    :goto_0
    return-void

    .line 3129
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->canRewind()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3133
    if-nez p1, :cond_2

    .line 3134
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 3135
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 3136
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    goto :goto_0

    .line 3165
    :catch_0
    move-exception v4

    goto :goto_0

    .line 3138
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 3139
    cmp-long v4, p2, v6

    if-gez v4, :cond_6

    .line 3141
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 3146
    :goto_1
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    sub-long v2, v4, p2

    .line 3147
    .local v2, newpos:J
    cmp-long v4, v2, v10

    if-gez v4, :cond_3

    .line 3149
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->prev()V

    .line 3150
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 3151
    .local v0, duration:J
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 3152
    add-long/2addr v2, v0

    .line 3154
    .end local v0           #duration:J
    :cond_3
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    if-gez p1, :cond_5

    .line 3155
    :cond_4
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    .line 3156
    iput-wide p2, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 3158
    :cond_5
    if-ltz p1, :cond_7

    .line 3159
    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    .line 3163
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    goto :goto_0

    .line 3144
    .end local v2           #newpos:J
    :cond_6
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 3161
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

    .line 3170
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    .line 3207
    :goto_0
    return-void

    .line 3173
    :cond_0
    if-nez p1, :cond_1

    .line 3174
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 3175
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 3176
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    goto :goto_0

    .line 3205
    :catch_0
    move-exception v4

    goto :goto_0

    .line 3178
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 3179
    cmp-long v4, p2, v6

    if-gez v4, :cond_5

    .line 3181
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 3186
    :goto_1
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    add-long v2, v4, p2

    .line 3187
    .local v2, newpos:J
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 3188
    .local v0, duration:J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    .line 3190
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->next()V

    .line 3191
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    .line 3192
    sub-long/2addr v2, v0

    .line 3194
    :cond_2
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    if-gez p1, :cond_4

    .line 3195
    :cond_3
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    .line 3196
    iput-wide p2, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    .line 3198
    :cond_4
    if-ltz p1, :cond_6

    .line 3199
    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    .line 3203
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    goto :goto_0

    .line 3184
    .end local v0           #duration:J
    .end local v2           #newpos:J
    :cond_5
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    .line 3201
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

    .line 2900
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_b

    .line 2901
    const/4 v2, 0x0

    .local v2, y:I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_a

    .line 2902
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->keyboard:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    if-ne v3, p1, :cond_9

    .line 2903
    const/4 v0, 0x0

    .line 2905
    .local v0, dir:I
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-ne v1, v3, :cond_1

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ne v2, v3, :cond_1

    .line 2906
    const/4 v0, 0x0

    .line 2926
    :cond_0
    :goto_2
    iput v1, p0, Lcom/htc/music/HtcMusic;->lastX:I

    .line 2927
    iput v2, p0, Lcom/htc/music/HtcMusic;->lastY:I

    .line 2929
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

    .line 2932
    :goto_3
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    .line 2933
    const/4 v3, 0x1

    .line 2939
    .end local v0           #dir:I
    .end local v2           #y:I
    :goto_4
    return v3

    .line 2907
    .restart local v0       #dir:I
    .restart local v2       #y:I
    :cond_1
    if-nez v2, :cond_2

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-le v1, v3, :cond_2

    .line 2908
    const/4 v0, 0x1

    goto :goto_2

    .line 2909
    :cond_2
    if-nez v2, :cond_3

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-ge v1, v3, :cond_3

    .line 2910
    const/4 v0, -0x1

    goto :goto_2

    .line 2912
    :cond_3
    if-ne v2, v4, :cond_4

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-le v1, v3, :cond_4

    .line 2913
    const/4 v0, -0x1

    goto :goto_2

    .line 2914
    :cond_4
    if-ne v2, v4, :cond_5

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-ge v1, v3, :cond_5

    .line 2915
    const/4 v0, 0x1

    goto :goto_2

    .line 2917
    :cond_5
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ge v2, v3, :cond_6

    if-gt v1, v6, :cond_6

    .line 2918
    const/4 v0, 0x1

    goto :goto_2

    .line 2919
    :cond_6
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ge v2, v3, :cond_7

    if-lt v1, v7, :cond_7

    .line 2920
    const/4 v0, -0x1

    goto :goto_2

    .line 2922
    :cond_7
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-le v2, v3, :cond_8

    if-gt v1, v6, :cond_8

    .line 2923
    const/4 v0, -0x1

    goto :goto_2

    .line 2924
    :cond_8
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-le v2, v3, :cond_0

    if-lt v1, v7, :cond_0

    .line 2925
    const/4 v0, 0x1

    goto :goto_2

    .line 2901
    .end local v0           #dir:I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2900
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2937
    .end local v2           #y:I
    :cond_b
    iput v5, p0, Lcom/htc/music/HtcMusic;->lastX:I

    .line 2938
    iput v5, p0, Lcom/htc/music/HtcMusic;->lastY:I

    .line 2939
    const/4 v3, 0x0

    goto :goto_4

    .line 2930
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

    .line 2943
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_1

    .line 2956
    :cond_0
    :goto_0
    return v2

    .line 2945
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 2946
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->keyboard:[[I

    aget-object v3, v3, v2

    aget v3, v3, v0

    if-ne v3, p1, :cond_2

    .line 2947
    mul-int/lit8 v2, v0, 0x64

    div-int/lit8 v1, v2, 0xa

    .line 2949
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

    .line 2952
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    .line 2953
    const/4 v2, 0x1

    goto :goto_0

    .line 2945
    .end local v1           #seekpercentage:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2950
    .restart local v1       #seekpercentage:I
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private setAllSongsTitle()V
    .locals 0

    .prologue
    .line 3774
    return-void
.end method

.method private setDLNAPreloadEnable(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1682
    const-string v1, "wireless_display"

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 1683
    .local v0, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v0, :cond_0

    .line 1684
    invoke-virtual {v0, p1}, Lcom/htc/service/WirelessDisplayManager;->setDLNAPreloadEnable(Z)V

    .line 1685
    :cond_0
    return-void
.end method

.method private setOnDismissListener(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    .line 428
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 429
    return-void
.end method

.method private setOnSoundEffectDismissListener(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    .line 440
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 441
    return-void
.end method

.method private setPauseButtonImage()V
    .locals 2

    .prologue
    .line 3777
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    if-nez v0, :cond_0

    .line 3786
    :goto_0
    return-void

    .line 3779
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3780
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    goto :goto_0

    .line 3784
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3782
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
    .line 7815
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsPlaybackControlEnabled:Z

    .line 7816
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_0

    .line 7817
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 7818
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    if-eqz v0, :cond_1

    .line 7819
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/RepeatingImageButton;->setEnabled(Z)V

    .line 7820
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    if-eqz v0, :cond_2

    .line 7821
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/RepeatingImageButton;->setEnabled(Z)V

    .line 7822
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v0, :cond_3

    .line 7823
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 7824
    :cond_3
    return-void
.end method

.method private setRepeatButtonImage()V
    .locals 2

    .prologue
    .line 3691
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-nez v0, :cond_0

    .line 3692
    const-string v0, "[HtcMusic]"

    const-string v1, "mRepeatButton is null in setRepeatButtonImage"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3729
    :goto_0
    return-void

    .line 3696
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 3697
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 3727
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3701
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 3702
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3720
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 3721
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 3722
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_0

    .line 3704
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 3706
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 3707
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    goto :goto_0

    .line 3712
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setIconResource(I)V

    .line 3714
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 3715
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3702
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
    .line 5431
    packed-switch p1, :pswitch_data_0

    .line 5461
    :goto_0
    return-void

    .line 5434
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 5435
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5436
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 5437
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 5439
    :cond_0
    const v0, 0x7f070054

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 5440
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5441
    :catch_0
    move-exception v0

    goto :goto_0

    .line 5446
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 5447
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 5448
    const v0, 0x7f070055

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 5449
    :catch_1
    move-exception v0

    goto :goto_0

    .line 5454
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 5455
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 5456
    const v0, 0x7f070053

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 5457
    :catch_2
    move-exception v0

    goto :goto_0

    .line 5431
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
    .line 2778
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v0, :cond_1

    .line 2791
    :cond_0
    :goto_0
    return-void

    .line 2781
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-nez v0, :cond_2

    .line 2782
    new-instance v0, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 2785
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v0, :cond_0

    .line 2786
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioId(I)V

    .line 2787
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 2788
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioType(I)V

    .line 2789
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

    .line 7575
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_1

    .line 7576
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 7577
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 7578
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    .line 7593
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 7594
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f07001f

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 7610
    :cond_1
    return-void

    .line 7580
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 7581
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const-string v1, "com.htc.R.id.secondary"

    invoke-static {v1}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    .line 7583
    :cond_3
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 7584
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 7585
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 7586
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSecondary:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 7589
    :cond_4
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    .line 7590
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method private setShuffleButtonImage()V
    .locals 2

    .prologue
    .line 3733
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-nez v0, :cond_0

    .line 3734
    const-string v0, "[HtcMusic]"

    const-string v1, "mShuffleButton is null in setShuffleButtonImage"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3761
    :goto_0
    return-void

    .line 3738
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 3739
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 3759
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3743
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 3744
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3753
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 3754
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V

    .line 3758
    :goto_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcImageButton;->invalidate()V

    goto :goto_0

    .line 3747
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->stayInPress(Z)V

    .line 3748
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcImageButton;->setColorOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3744
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

    .line 6481
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v1, :cond_0

    .line 6482
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 6483
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/HtcMusic$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6484
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->SetSoundEffectKey:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6485
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "savestatus"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6487
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v1, v0}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6491
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 6489
    :cond_0
    const-string v1, "[HtcMusic]"

    const-string v2, "SetSoundEffect()...mNonUiHandler is null!!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shareMusicFile()V
    .locals 5

    .prologue
    .line 2798
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->canShare()I

    move-result v0

    .line 2800
    .local v0, canShare:I
    packed-switch v0, :pswitch_data_0

    .line 2817
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2819
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2822
    .end local v1           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 2802
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

    .line 2805
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->showNewDialog(I)V

    goto :goto_0

    .line 2810
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

    .line 2812
    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->showNewDialog(I)V

    goto :goto_0

    .line 2800
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
    .line 2827
    invoke-static {p0, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    .line 2830
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2831
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    .line 2841
    :cond_0
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showNewDialog(I)V

    .line 2842
    return-void
.end method

.method private showHideOneShotMode()V
    .locals 0

    .prologue
    .line 3682
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 3683
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 3685
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 3686
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    .line 3687
    return-void
.end method

.method private showSetContactRingtoneToast()V
    .locals 2

    .prologue
    .line 2860
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2861
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2863
    :cond_0
    return-void
.end method

.method private showToast(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 3300
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 3301
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    .line 3304
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 3305
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3306
    return-void
.end method

.method private startAlbumDetail(I)V
    .locals 3
    .parameter "albumId"

    .prologue
    .line 7673
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7674
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 7675
    const-string v1, "albumid"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7676
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7677
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 7678
    return-void
.end method

.method private startAutoDownloadAlbum()V
    .locals 2

    .prologue
    .line 7555
    const-string v0, "[HtcMusic]"

    const-string v1, "start download albumart"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7556
    const-string v0, "action_auto_update_album"

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    .line 7557
    return-void
.end method

.method private startBrowserTabActivity()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1367
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1368
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1369
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1370
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1373
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1374
    const-string v1, "KeepHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1375
    const-string v1, "RemoveStoreHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1376
    const-string v1, "from-lockscreen"

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from-lockscreen"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1378
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 1379
    return-void
.end method

.method private startMusicEnhancerService(Ljava/lang/String;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 7681
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    if-eqz v1, :cond_0

    .line 7682
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7683
    .local v0, downloadAlbumArtIntent:Landroid/content/Intent;
    const-string v1, "com.htc.musicenhancer"

    const-string v2, "com.htc.musicenhancer.EnhancerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7685
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 7687
    .end local v0           #downloadAlbumArtIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private startPlayback()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 3309
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v10, :cond_0

    .line 3401
    :goto_0
    return-void

    .line 3311
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 3312
    .local v2, intent:Landroid/content/Intent;
    const-string v1, ""

    .line 3313
    .local v1, filename:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 3314
    .local v9, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 3315
    .local v6, oneShot:Z
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    iget-boolean v10, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    if-nez v10, :cond_5

    .line 3318
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 3319
    .local v7, scheme:Ljava/lang/String;
    const-string v10, "file"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3320
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3324
    :goto_1
    if-eqz v1, :cond_4

    const-string v10, "content://drm/"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3325
    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v8

    .line 3326
    .local v8, status:I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_2

    .line 3327
    const v10, 0x7f070068

    invoke-direct {p0, v10}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 3328
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 3322
    .end local v8           #status:I
    :cond_1
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3330
    .restart local v8       #status:I
    :cond_2
    if-eq v8, v11, :cond_3

    const/4 v10, 0x2

    if-ne v8, v10, :cond_4

    .line 3332
    :cond_3
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3333
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v10, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v2, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3334
    const-string v10, "drmuri"

    invoke-virtual {v2, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3335
    const-string v10, "drmtargettomain"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3336
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 3337
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 3342
    .end local v8           #status:I
    :cond_4
    const/4 v6, 0x1

    .line 3343
    :try_start_0
    iget-boolean v10, p0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    if-nez v10, :cond_8

    .line 3344
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v10

    if-nez v10, :cond_7

    .line 3345
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->stop()V

    .line 3359
    :goto_2
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10, v1}, Lcom/htc/music/IMediaPlaybackService;->openfile(Ljava/lang/String;)V

    .line 3363
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3365
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 3366
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3374
    .end local v7           #scheme:Ljava/lang/String;
    :cond_5
    :goto_3
    if-nez v6, :cond_6

    .line 3376
    :try_start_1
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z

    move-result v3

    .line 3377
    .local v3, isSystemReady:Z
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v10

    if-nez v10, :cond_9

    if-nez v3, :cond_9

    .line 3400
    .end local v3           #isSystemReady:Z
    :cond_6
    :goto_4
    iput-boolean v13, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    goto/16 :goto_0

    .line 3356
    .restart local v7       #scheme:Ljava/lang/String;
    :cond_7
    :try_start_2
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 3370
    :catch_0
    move-exception v0

    .line 3371
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

    .line 3368
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_8
    const/4 v10, 0x0

    :try_start_3
    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 3385
    .end local v7           #scheme:Ljava/lang/String;
    .restart local v3       #isSystemReady:Z
    :cond_9
    :try_start_4
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 3386
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-wide v4

    .line 3388
    .local v4, next:J
    :try_start_5
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3389
    invoke-direct {p0, v4, v5}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 3391
    :catch_1
    move-exception v0

    .line 3392
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

    .line 3395
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #isSystemReady:Z
    .end local v4           #next:J
    :catch_2
    move-exception v0

    .line 3396
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
    .line 7560
    const-string v0, "[HtcMusic]"

    const-string v1, "start update all albumart"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7561
    const-string v0, "action_update_all_album"

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    .line 7562
    return-void
.end method

.method private stopDownloadAlbumArtService()V
    .locals 2

    .prologue
    .line 7565
    const-string v0, "[HtcMusic]"

    const-string v1, "stopDownloadAlbumArtService"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7566
    const-string v0, "action_cancel_download"

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    .line 7571
    return-void
.end method

.method private stopFFRWScan(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 1490
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1491
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1492
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1493
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1494
    return-void
.end method

.method private toggleShuffle()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 3241
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 3271
    :goto_0
    return-void

    .line 3245
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 3246
    .local v0, shuffle:I
    if-nez v0, :cond_2

    .line 3247
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 3248
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3249
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 3250
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 3257
    :cond_1
    const v1, 0x7f070051

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 3268
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    goto :goto_0

    .line 3269
    .end local v0           #shuffle:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3258
    .restart local v0       #shuffle:I
    :cond_2
    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    .line 3260
    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 3261
    const v1, 0x7f070052

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_1

    .line 3263
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
    .line 7613
    const-string v2, "[HtcMusic]"

    const-string v3, "updateCurrentAlbum"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7614
    new-instance v0, Landroid/content/Intent;

    const-string v2, "action_update_current_album"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7616
    .local v0, downloadAlbumArtIntent:Landroid/content/Intent;
    const-string v2, "com.htc.musicenhancer"

    const-string v3, "com.htc.musicenhancer.EnhancerService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7619
    :try_start_0
    const-string v2, "album_id"

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7621
    const-string v2, "audio_id"

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7623
    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7630
    :goto_0
    return-void

    .line 7624
    :catch_0
    move-exception v1

    .line 7625
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
    .line 3804
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v7, :cond_1

    .line 3865
    :cond_0
    :goto_0
    return-void

    .line 3808
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueue()[I

    move-result-object v0

    .line 3809
    .local v0, albumIdArray:[I
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v6

    .line 3810
    .local v6, selectedPos:I
    const/4 v4, 0x0

    .line 3811
    .local v4, nLength:I
    if-eqz v0, :cond_2

    .line 3812
    array-length v4, v0

    .line 3815
    :cond_2
    if-eqz v0, :cond_5

    if-lez v4, :cond_5

    .line 3816
    new-array v1, v4, [Lcom/htc/music/GliderAdapter$AlbumInfo;

    .line 3818
    .local v1, albumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 3819
    new-instance v7, Lcom/htc/music/GliderAdapter$AlbumInfo;

    invoke-direct {v7}, Lcom/htc/music/GliderAdapter$AlbumInfo;-><init>()V

    aput-object v7, v1, v3

    .line 3820
    aget-object v7, v1, v3

    aget v8, v0, v3

    iput v8, v7, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    .line 3818
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3822
    :cond_3
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_0

    .line 3825
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3826
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7}, Lcom/htc/music/GliderAdapter;->clearAllCache()V

    .line 3830
    :cond_4
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    invoke-virtual {v7, v1, v8, v6}, Lcom/htc/music/GliderAdapter;->setAlbumInfo([Lcom/htc/music/GliderAdapter$AlbumInfo;ZI)V

    .line 3843
    .end local v1           #albumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    .end local v3           #i:I
    :goto_2
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v7, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyDataSetChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3850
    .end local v0           #albumIdArray:[I
    .end local v4           #nLength:I
    .end local v6           #selectedPos:I
    :goto_3
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v5

    .line 3851
    .local v5, nSelectPos:I
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_0

    .line 3853
    if-ltz v5, :cond_7

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7}, Lcom/htc/music/GliderAdapter;->getItemCount()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 3854
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 3855
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7, v5}, Lcom/htc/music/GliderAdapter;->onSelectionChanged(I)V

    .line 3856
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7, v5}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3862
    .end local v5           #nSelectPos:I
    :catch_0
    move-exception v2

    .line 3863
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3833
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #albumIdArray:[I
    .restart local v4       #nLength:I
    .restart local v6       #selectedPos:I
    :cond_5
    :try_start_2
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_0

    .line 3836
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3837
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7}, Lcom/htc/music/GliderAdapter;->clearAllCache()V

    .line 3839
    :cond_6
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v8, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v9

    invoke-virtual {v7, v8, v9, v6}, Lcom/htc/music/GliderAdapter;->setAlbumInfo([Lcom/htc/music/GliderAdapter$AlbumInfo;ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3845
    .end local v0           #albumIdArray:[I
    .end local v4           #nLength:I
    .end local v6           #selectedPos:I
    :catch_1
    move-exception v2

    .line 3846
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 3858
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v5       #nSelectPos:I
    :cond_7
    :try_start_3
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 3859
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/music/GliderAdapter;->onSelectionChanged(I)V

    .line 3860
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

    .line 1061
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/ActionBarText;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1063
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/htc/music/HtcMusic;->buildTitleInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/music/HtcMusic;->setSecondaryTitle(Ljava/lang/String;)V

    .line 1066
    :cond_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    if-nez v3, :cond_2

    .line 1099
    :cond_1
    :goto_0
    return-void

    .line 1068
    :cond_2
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v4, 0x2c

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1069
    .local v2, queue:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v4, 0x2e

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1071
    .local v0, close:Landroid/view/MenuItem;
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 1073
    .local v1, nDlnaMode:I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    .line 1075
    :cond_3
    if-eqz v2, :cond_4

    .line 1076
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1078
    :cond_4
    if-eqz v0, :cond_1

    .line 1079
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1082
    :cond_5
    if-eqz v2, :cond_6

    .line 1083
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v3, :cond_7

    .line 1084
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1093
    :cond_6
    :goto_1
    if-eqz v0, :cond_1

    .line 1094
    const-string v3, "[HtcMusic]"

    const-string v4, "invisible dmc close button"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1086
    :cond_7
    if-ne v6, v1, :cond_8

    .line 1087
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1089
    :cond_8
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private updateTrackInfoP()V
    .locals 30

    .prologue
    .line 4620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 4868
    :cond_0
    :goto_0
    return-void

    .line 4623
    :cond_1
    const/16 v24, 0x0

    .line 4624
    .local v24, path:Ljava/lang/String;
    const/16 v27, 0x0

    .line 4625
    .local v27, service_queuesize:I
    const/4 v10, 0x0

    .line 4626
    .local v10, artistName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 4627
    .local v9, albumName:Ljava/lang/String;
    const/16 v29, 0x0

    .line 4628
    .local v29, trackName:Ljava/lang/String;
    const/16 v22, 0x0

    .line 4630
    .local v22, ntrack:I
    const/16 v21, 0x0

    .line 4632
    .local v21, nOfSongs:Ljava/lang/String;
    const/16 v25, 0x0

    .line 4635
    .local v25, position:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4636
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

    .line 4659
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4865
    :catch_0
    move-exception v15

    .line 4866
    .local v15, ex:Landroid/os/RemoteException;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 4640
    .end local v15           #ex:Landroid/os/RemoteException;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v24

    .line 4641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v27

    .line 4642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v10

    .line 4643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v9

    .line 4644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v29

    .line 4646
    if-eqz v24, :cond_14

    .line 4647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    if-gez v2, :cond_13

    const/16 v22, 0x1

    .line 4652
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

    .line 4653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    .line 4654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v26

    .line 4655
    .local v26, queue:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v25

    .line 4656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-gez v2, :cond_15

    const/16 v23, 0x1

    .line 4659
    .local v23, ntrack_temp:I
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4662
    if-nez v24, :cond_4

    if-eqz v27, :cond_0

    .line 4670
    :cond_4
    if-eqz v24, :cond_17

    .line 4671
    const-string v2, "<unknown>"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4672
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4674
    :cond_5
    const-string v2, "<unknown>"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4675
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4680
    :cond_6
    if-nez v10, :cond_10

    if-nez v9, :cond_10

    if-nez v29, :cond_10

    .line 4682
    const-string v2, "[HtcMusic]"

    const-string v3, "updateTrackInfoP - get metadata from MediaMetadataRetriever"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4684
    new-instance v17, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v17 .. v17}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4686
    .local v17, mmr:Landroid/media/MediaMetadataRetriever;
    if-eqz v17, :cond_7

    .line 4688
    :try_start_4
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 4690
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    .line 4692
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    .line 4694
    const/4 v2, 0x7

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v29

    .line 4701
    :goto_3
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 4702
    const/16 v17, 0x0

    .line 4707
    :cond_7
    if-eqz v10, :cond_8

    .line 4708
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 4710
    :cond_8
    if-eqz v10, :cond_9

    const-string v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4711
    :cond_9
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4713
    :cond_a
    if-eqz v9, :cond_b

    .line 4714
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 4716
    :cond_b
    if-eqz v9, :cond_c

    const-string v2, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4717
    :cond_c
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4719
    :cond_d
    if-eqz v29, :cond_e

    .line 4720
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    .line 4722
    :cond_e
    if-eqz v29, :cond_f

    const-string v2, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4724
    :cond_f
    const-string v2, "/"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4725
    const/16 v19, -0x1

    .local v19, nBegin:I
    const/16 v20, -0x1

    .line 4727
    .local v20, nEnd:I
    const-string v2, "/"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    .line 4728
    const-string v2, "."

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    .line 4730
    if-ltz v19, :cond_10

    move/from16 v0, v20

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    .line 4731
    add-int/lit8 v2, v19, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 4740
    .end local v17           #mmr:Landroid/media/MediaMetadataRetriever;
    .end local v19           #nBegin:I
    .end local v20           #nEnd:I
    :cond_10
    const/4 v8, 0x0

    .line 4741
    .local v8, albumArtist_tmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    .line 4742
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    .line 4743
    if-eqz v9, :cond_11

    const-string v2, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, " "

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4746
    :cond_11
    move-object v8, v10

    .line 4762
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 4766
    .local v18, msg:Landroid/os/Message;
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "AlbumArtistName"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4767
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TrackName"

    move-object/from16 v0, v29

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4848
    .end local v8           #albumArtist_tmp:Ljava/lang/String;
    :cond_12
    :goto_5
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 4851
    .local v28, temp:Ljava/lang/StringBuilder;
    :try_start_6
    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4852
    const-string v2, " / "

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4853
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4854
    const-string v2, " "

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4855
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 4861
    :goto_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4863
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 4647
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

    .line 4649
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    add-int/lit8 v22, v2, 0x1

    goto/16 :goto_1

    .line 4656
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

    .line 4659
    .end local v26           #queue:[I
    :catchall_0
    move-exception v2

    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 4696
    .restart local v17       #mmr:Landroid/media/MediaMetadataRetriever;
    .restart local v23       #ntrack_temp:I
    .restart local v26       #queue:[I
    :catch_1
    move-exception v15

    .line 4697
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

    .line 4748
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

    .line 4770
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

    .line 4775
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

    .line 4792
    .local v4, mCursorCols:[Ljava/lang/String;
    aget v2, v26, v25

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 4793
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

    .line 4797
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 4802
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4803
    const-string v2, "artist"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4805
    .local v13, cursor_artistName:Ljava/lang/String;
    if-eqz v13, :cond_18

    const-string v2, "<unknown>"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4807
    :cond_18
    const v2, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4809
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

    .line 4811
    const-string v2, "album"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4813
    .local v12, cursor_albumName:Ljava/lang/String;
    if-eqz v12, :cond_1a

    const-string v2, "<unknown>"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 4815
    :cond_1a
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4817
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

    .line 4834
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    .line 4835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 4837
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

    .line 4838
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TrackName"

    const-string v5, "title"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4839
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TotalTime"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4842
    if-eqz v11, :cond_12

    .line 4843
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 4857
    .end local v4           #mCursorCols:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #cursor_albumName:Ljava/lang/String;
    .end local v13           #cursor_artistName:Ljava/lang/String;
    .end local v16           #id:Ljava/lang/String;
    .restart local v28       #temp:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v14

    .line 4858
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
    .line 4926
    if-eqz p1, :cond_0

    const-string v0, "content://drm/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4927
    const/4 v0, 0x1

    .line 4929
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
    .line 6500
    if-nez p1, :cond_0

    .line 6502
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z

    if-eqz v1, :cond_0

    .line 6508
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z

    .line 6510
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 6511
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6517
    :cond_0
    :goto_0
    return-void

    .line 6512
    :catch_0
    move-exception v0

    .line 6513
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public BeatsAudioStatusChanged(Z)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 6597
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

    .line 6093
    const-string v6, "DLNA"

    const/4 v7, 0x5

    invoke-virtual {p0, v6, v7}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6096
    .local v0, Preferences:Landroid/content/SharedPreferences;
    const-string v6, "Server"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6097
    .local v5, server:Ljava/lang/String;
    const-string v6, "Render"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6098
    .local v4, render:Ljava/lang/String;
    const-string v6, "container"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6099
    .local v1, container:Ljava/lang/String;
    const-string v6, "content"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6100
    .local v2, content:Ljava/lang/String;
    const-string v6, "playatglance"

    invoke-virtual {p1, v6, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 6102
    .local v3, playAtGlance:Z
    const-string v6, "[HtcMusic]"

    const-string v7, "CheckDLNAMode"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6103
    const-string v6, "[HtcMusic]"

    const-string v7, "Get info from intent"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6104
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

    .line 6105
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

    .line 6106
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

    .line 6107
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

    .line 6108
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

    .line 6110
    if-nez v5, :cond_3

    if-nez v4, :cond_3

    if-nez v1, :cond_3

    .line 6111
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 6115
    :cond_0
    const-string v6, "[HtcMusic]"

    const-string v7, "All info from intent is null, get info from preference"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6118
    const-string v6, "server"

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6119
    const-string v6, "Render"

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6120
    const-string v6, "container"

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6121
    const-string v6, "content"

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6123
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

    .line 6124
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

    .line 6125
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

    .line 6126
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

    .line 6128
    if-nez v5, :cond_2

    if-nez v4, :cond_2

    .line 6206
    :goto_0
    return-void

    .line 6136
    :cond_1
    const-string v6, "[HtcMusic]"

    const-string v7, "content != null, called by DMC, need update local play position"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6138
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "switchLocal"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6151
    :cond_2
    :goto_1
    const-string v6, "[HtcMusic]"

    const-string v7, "save intent info to preference"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6152
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

    .line 6153
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

    .line 6154
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

    .line 6155
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

    .line 6156
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

    .line 6157
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

    .line 6158
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

    .line 6159
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

    .line 6161
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

    .line 6166
    const/4 v6, -0x1

    invoke-static {p0, v10, v6, v3}, Lcom/htc/music/util/MusicUtils;->checkDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v6

    iput v6, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    .line 6180
    iget v6, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    .line 6183
    :pswitch_0
    const-string v6, "[HtcMusic]"

    const-string v7, "DLNA_LOCAL mode"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6184
    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 6140
    :cond_3
    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 6141
    const-string v6, "[HtcMusic]"

    const-string v7, "server, container, content != null, called by DMC, need update DMP"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6143
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

    .line 6189
    :pswitch_1
    const-string v6, "[HtcMusic]"

    const-string v7, "DLNA_DMP mode"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6194
    :pswitch_2
    const-string v6, "[HtcMusic]"

    const-string v7, "CheckDLNAMode:DLNA_PUSH mode."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6200
    :pswitch_3
    const-string v6, "[HtcMusic]"

    const-string v7, "CheckDLNAMode:DLNA_DMC mode."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6180
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
    .line 6723
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

    .line 6726
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6727
    const-string v0, "[HtcMusic]"

    const-string v1, "OnHdmiPlugReceiver, If support Global Beats. Do Nothing for HDMI plugging in/out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6745
    :cond_0
    :goto_0
    return-void

    .line 6731
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6732
    const-string v0, "[HtcMusic]"

    const-string v1, "OnHdmiPlugReceiver headset is plugged. Do Nothing for HDMI plugging in/out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6737
    :cond_2
    if-lez p2, :cond_0

    .line 6738
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6741
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->recoverNoEffectWithHDMI()V

    goto :goto_0
.end method

.method protected afterPlayback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5505
    const/4 v0, 0x0

    .line 5506
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

    .line 5509
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v2, :cond_1

    .line 5510
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcImageButton;->setVisibility(I)V

    .line 5511
    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v2, :cond_2

    .line 5512
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcImageButton;->setVisibility(I)V

    .line 5520
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 5521
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 5522
    const/4 v0, 0x1

    .line 5524
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v2, :cond_3

    .line 5525
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 5526
    :cond_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v2, :cond_4

    .line 5527
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcImageButton;->setEnabled(Z)V

    .line 5533
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5553
    :goto_0
    return-void

    .line 5536
    :catch_0
    move-exception v2

    .line 5541
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_6

    .line 5542
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    .line 5543
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5544
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5546
    const-class v2, Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5547
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 5550
    invoke-virtual {p0, v4, v4}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V

    .line 5552
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0
.end method

.method canRewind()Z
    .locals 1

    .prologue
    .line 5641
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 5642
    const/4 v0, 0x0

    .line 5644
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

    .line 5560
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v9, :cond_1

    :cond_0
    move v0, v8

    .line 5637
    :goto_0
    return v0

    .line 5563
    :cond_1
    iget v9, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 5564
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_2

    move v0, v8

    .line 5565
    goto :goto_0

    .line 5567
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 5568
    :cond_3
    if-eqz v1, :cond_4

    .line 5569
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 5570
    goto :goto_0

    .line 5573
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5574
    const/4 v0, 0x0

    .line 5579
    .local v0, canBeShared:I
    const-string v9, "is_music"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 5581
    .local v5, musicType:J
    const-string v9, "_data"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5585
    .local v7, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 5587
    .local v4, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 5588
    const-string v9, "mime_type"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5594
    :cond_6
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-lez v9, :cond_a

    .line 5596
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    .line 5598
    .local v3, drmCursor:Landroid/database/Cursor;
    if-nez v3, :cond_7

    .line 5599
    const-string v9, "[HtcMusic]"

    const-string v10, "MusicUtils.getDrmCursor return null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5601
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5602
    const/4 v1, 0x0

    move v0, v8

    .line 5603
    goto :goto_0

    .line 5606
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_9

    .line 5607
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5609
    const-string v8, "delivery_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 5612
    .local v2, deliveryType:I
    const/4 v8, 0x4

    if-eq v8, v2, :cond_8

    const/4 v8, 0x3

    if-ne v8, v2, :cond_9

    .line 5614
    :cond_8
    const/4 v0, 0x2

    .line 5618
    .end local v2           #deliveryType:I
    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5634
    .end local v3           #drmCursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5635
    const/4 v1, 0x0

    .line 5637
    goto/16 :goto_0

    .line 5622
    :cond_a
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v4, :cond_b

    const-string v8, "audio/x-wma-drm"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 5624
    const-string v8, "[HtcMusic]"

    const-string v9, "canShare()....This file is WMDRM...."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5625
    const/4 v0, 0x0

    goto :goto_1

    .line 5629
    :cond_b
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public checkDrmFile(Landroid/net/Uri;)V
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v7, 0x1

    .line 5464
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5466
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 5467
    .local v5, status:I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 5468
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 5499
    :goto_0
    return-void

    .line 5469
    :cond_0
    if-nez v5, :cond_3

    .line 5470
    invoke-static {v3, p1, v7}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 5472
    .local v0, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v0, :cond_1

    .line 5473
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    .line 5474
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->afterPlayback()V

    goto :goto_0

    .line 5476
    :cond_1
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    .line 5477
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 5478
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 5480
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    .line 5481
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->afterPlayback()V

    goto :goto_0

    .line 5485
    .end local v0           #drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 5487
    .local v4, scheme:Ljava/lang/String;
    const-string v6, "file"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5488
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 5492
    .local v1, filename:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5493
    .local v2, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v2, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5494
    const-string v6, "drmuri"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5495
    const-string v6, "drmtargettomain"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5496
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 5497
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    .line 5490
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

    .line 7995
    iget v1, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    if-ne v1, v3, :cond_0

    .line 8006
    :goto_0
    return-void

    .line 8000
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->dismissDialog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8004
    :goto_1
    iput v3, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    goto :goto_0

    .line 8001
    :catch_0
    move-exception v0

    .line 8002
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "[HtcMusic]"

    const-string v2, "[dismissActiveDialog] ."

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 8004
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

    .line 3027
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 3029
    .local v2, keyCode:I
    packed-switch v2, :pswitch_data_0

    .line 3052
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 3033
    :pswitch_0
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {p0, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->checkDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v0

    .line 3034
    .local v0, dlnaMode:I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 3036
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->createVolumeDialog()V

    .line 3039
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

    .line 3041
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

    .line 3047
    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 3043
    :catch_0
    move-exception v1

    .line 3044
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 3049
    .end local v1           #e1:Landroid/os/RemoteException;
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 3029
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
    .line 1541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 1543
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1544
    return-void
.end method

.method public headSetStatusChanged(ZZ)V
    .locals 17
    .parameter "newStatus"
    .parameter "isBeatsHeadset"

    .prologue
    .line 6601
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

    .line 6604
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 6719
    :cond_0
    :goto_0
    return-void

    .line 6608
    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 6609
    const-string v14, "[HtcMusic]"

    const-string v15, "headSetStatusChanged, headset is plugged out and HDMI is connected."

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6611
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->recoverNoEffectWithHDMI()V

    goto :goto_0

    .line 6615
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleSize(Landroid/content/Context;)I

    move-result v13

    .line 6618
    .local v13, styleSize:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v14, v13, :cond_8

    .line 6622
    if-eqz p1, :cond_3

    .line 6623
    const/4 v7, 0x1

    .local v7, i:I
    :goto_1
    if-ge v7, v13, :cond_5

    .line 6624
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/util/SoundEffectItem;

    .line 6625
    .local v5, enableItem:Lcom/htc/music/util/SoundEffectItem;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    .line 6623
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 6628
    .end local v5           #enableItem:Lcom/htc/music/util/SoundEffectItem;
    .end local v7           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    sget v15, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/util/SoundEffectItem;

    .line 6631
    .local v6, equalizerSetting:Lcom/htc/music/util/SoundEffectItem;
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    .line 6635
    iget-boolean v14, v6, Lcom/htc/music/util/SoundEffectItem;->mIsSelected:Z

    if-eqz v14, :cond_5

    .line 6636
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectType()I

    move-result v4

    .line 6638
    .local v4, effectType:I
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 6639
    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    .line 6642
    :cond_4
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6643
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/SoundEffectItem;

    .line 6645
    .local v2, defaultEffect:Lcom/htc/music/util/SoundEffectItem;
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    .line 6646
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    .line 6652
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

    .line 6655
    const/4 v9, 0x0

    .line 6656
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

    .line 6657
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #item:Lcom/htc/music/util/SoundEffectItem;
    check-cast v9, Lcom/htc/music/util/SoundEffectItem;

    .line 6658
    .restart local v9       #item:Lcom/htc/music/util/SoundEffectItem;
    if-nez v9, :cond_6

    .line 6656
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 6662
    :cond_6
    sget v14, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    if-ne v7, v14, :cond_c

    .line 6663
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 6667
    .end local v7           #i:I
    .end local v8           #iSize:I
    .end local v9           #item:Lcom/htc/music/util/SoundEffectItem;
    :catch_0
    move-exception v3

    .line 6668
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

    .line 6669
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 6672
    .end local v3           #e:Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x33

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 6673
    .local v10, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6676
    .end local v10           #msg:Landroid/os/Message;
    :cond_8
    if-nez p1, :cond_0

    .line 6677
    const/4 v11, 0x0

    .line 6678
    .local v11, recoverEffect:Z
    const/4 v12, 0x0

    .line 6681
    .local v12, showToast:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 6682
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 6684
    const/4 v12, 0x1

    .line 6689
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v14, v15}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v1

    .line 6692
    .local v1, currentSoundSetting:I
    sget v14, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v1, v14, :cond_a

    .line 6693
    const/4 v11, 0x1

    .line 6694
    const/4 v12, 0x1

    .line 6699
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    sget v15, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v14, v15, :cond_b

    .line 6700
    const/4 v11, 0x1

    .line 6701
    const/4 v12, 0x1

    .line 6704
    :cond_b
    if-eqz v12, :cond_0

    .line 6705
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x34

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 6707
    .restart local v10       #msg:Landroid/os/Message;
    const v14, 0x7f0700a2

    iput v14, v10, Landroid/os/Message;->arg1:I

    .line 6708
    if-eqz v11, :cond_d

    .line 6709
    const/4 v14, 0x1

    iput v14, v10, Landroid/os/Message;->arg2:I

    .line 6713
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 6665
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

    .line 6711
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

    .line 6390
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6392
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6393
    .local v1, resource:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6394
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

    .line 6398
    const v2, 0x204024c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mBestsStrWithBeatsHeadset:Ljava/lang/String;

    .line 6400
    const v2, 0x2040249

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mBestsStrNotBeatsHeadset:Ljava/lang/String;

    .line 6451
    :cond_0
    :goto_0
    return-void

    .line 6405
    .end local v1           #resource:Landroid/content/res/Resources;
    :cond_1
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    if-nez v2, :cond_2

    .line 6407
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_4

    .line 6409
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->initEqualizerStlyes(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6422
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    if-nez v2, :cond_3

    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 6424
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->localizeEqualizerStyle([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStyle:[Ljava/lang/String;

    .line 6427
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6428
    .restart local v1       #resource:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6429
    const v2, 0x7f06001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    .line 6432
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isDolbyEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6433
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 6434
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

    .line 6413
    .end local v1           #resource:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 6414
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

    .line 6418
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const-string v2, "[HtcMusic]"

    const-string v3, "initializeSoundEffectStyles, mService is null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6441
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
    .line 5656
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 32
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 2531
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

    .line 2534
    const/16 v28, -0x1

    move/from16 v0, p2

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 2753
    :cond_0
    :goto_0
    return-void

    .line 2543
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    .line 2544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/NowPlayingViewHelper;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v21

    .line 2546
    .local v21, result:Z
    if-nez v21, :cond_0

    .line 2550
    .end local v21           #result:Z
    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2565
    :sswitch_0
    const/16 v28, -0x1

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 2566
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v28, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v29

    aput v29, v18, v28

    .line 2567
    .local v18, list:[I
    const-string v28, "playlist"

    const/16 v29, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 2569
    .local v19, playlist:I
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 2552
    .end local v18           #list:[I
    .end local v19           #playlist:I
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    .line 2553
    .local v27, uri:Landroid/net/Uri;
    if-eqz v27, :cond_0

    .line 2554
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 2555
    .restart local v18       #list:[I
    const/16 v28, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v29

    aput v29, v18, v28

    .line 2556
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 2557
    .restart local v19       #playlist:I
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto/16 :goto_0

    .line 2575
    .end local v18           #list:[I
    .end local v19           #playlist:I
    .end local v27           #uri:Landroid/net/Uri;
    :sswitch_2
    const/16 v28, -0x1

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 2576
    move-object/from16 v22, p3

    .line 2577
    .local v22, resultIntent:Landroid/content/Intent;
    new-instance v23, Lcom/htc/music/HtcMusic$21;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic$21;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Intent;)V

    .line 2597
    .local v23, setContactRingtoneRunnable:Ljava/lang/Runnable;
    new-instance v26, Ljava/lang/Thread;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2598
    .local v26, thread:Ljava/lang/Thread;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2603
    .end local v22           #resultIntent:Landroid/content/Intent;
    .end local v23           #setContactRingtoneRunnable:Ljava/lang/Runnable;
    .end local v26           #thread:Ljava/lang/Thread;
    :sswitch_3
    const-string v28, "[HtcMusic]"

    const-string v29, "DMR_CHOOSER"

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    const-string v28, "DLNA"

    const/16 v29, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 2610
    .local v20, pref:Landroid/content/SharedPreferences;
    const-string v28, "DMR"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2611
    .local v4, DMR:Ljava/lang/String;
    const-string v28, "server"

    const/16 v29, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2612
    .local v5, DMS:Ljava/lang/String;
    const/16 v17, 0x1

    .line 2613
    .local v17, isSelectedDMR:Z
    if-nez v4, :cond_3

    .line 2614
    const/16 v17, 0x0

    .line 2617
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

    .line 2618
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

    .line 2620
    new-instance v9, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v28

    const/16 v29, 0x1

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v9, v0, v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    .line 2623
    .local v9, dlnaManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-virtual {v9, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->saveRenderer(Ljava/lang/String;)Z

    .line 2625
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_5

    .line 2626
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    const-string v29, "switch"

    const/16 v30, 0x1

    invoke-interface/range {v28 .. v30}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2641
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 2642
    const-string v28, "[HtcMusic]"

    const-string v29, "DMP mode change to DMS mode"

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2644
    const/4 v11, 0x0

    .line 2645
    .local v11, dmpPref:Landroid/content/SharedPreferences;
    const-string v28, "DMP"

    const/16 v29, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 2649
    const-string v28, "container"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2650
    .local v6, container:Ljava/lang/String;
    const-string v28, "curContentId"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2651
    .local v7, curContentId:Ljava/lang/String;
    const-string v28, "startIdx"

    const-wide/16 v29, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v29

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    .line 2652
    .local v24, startIdx:J
    const-string v28, "endIdx"

    const-wide/16 v29, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v29

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 2653
    .local v14, endIdx:J
    const-string v28, "direction"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 2655
    .local v8, dir:I
    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    const-wide/16 v28, -0x1

    cmp-long v28, v24, v28

    if-eqz v28, :cond_7

    if-eqz v8, :cond_7

    .line 2657
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 2658
    .local v13, ed:Landroid/content/SharedPreferences$Editor;
    const-string v28, "content"

    move-object/from16 v0, v28

    invoke-interface {v13, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2659
    const-string v28, "container"

    move-object/from16 v0, v28

    invoke-interface {v13, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2660
    const-string v28, "startIdx"

    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    invoke-interface {v13, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2661
    const-string v28, "endIdx"

    move-object/from16 v0, v28

    invoke-interface {v13, v0, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2662
    const-string v28, "direction"

    move-object/from16 v0, v28

    invoke-interface {v13, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2663
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2671
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

    .line 2673
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

    .line 2674
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

    .line 2675
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

    .line 2676
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

    .line 2677
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

    .line 2679
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_0

    .line 2723
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    .line 2724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v16

    .line 2725
    .local v16, isPlaying:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 2726
    if-eqz v16, :cond_0

    .line 2727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2731
    .end local v16           #isPlaying:Z
    :catch_0
    move-exception v12

    .line 2732
    .local v12, e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2628
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

    .line 2630
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

    .line 2631
    const-string v28, "[HtcMusic]"

    const-string v29, "Service is playing"

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 2636
    :catch_1
    move-exception v12

    .line 2637
    .restart local v12       #e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 2634
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_6
    :try_start_2
    const-string v28, "[HtcMusic]"

    const-string v29, "Service is null or not playing"

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 2665
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

    .line 2681
    .end local v6           #container:Ljava/lang/String;
    .end local v7           #curContentId:Ljava/lang/String;
    .end local v8           #dir:I
    .end local v11           #dmpPref:Landroid/content/SharedPreferences;
    .end local v14           #endIdx:J
    .end local v24           #startIdx:J
    .restart local v10       #dlnaMode:I
    :pswitch_1
    if-eqz v17, :cond_0

    .line 2683
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

    .line 2684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->pause()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2691
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

    .line 2692
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 2695
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 2696
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    .line 2697
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->switchToDMC(Landroid/content/Context;Z)Z

    goto/16 :goto_0

    .line 2686
    :catch_2
    move-exception v12

    .line 2687
    .restart local v12       #e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 2702
    .end local v12           #e:Landroid/os/RemoteException;
    :pswitch_2
    if-eqz v17, :cond_0

    .line 2704
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

    .line 2705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->pause()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2712
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

    .line 2713
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 2716
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 2717
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->switchToPUSH(Landroid/content/Context;Z)Z

    goto/16 :goto_0

    .line 2707
    :catch_3
    move-exception v12

    .line 2708
    .restart local v12       #e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 2729
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_c
    :try_start_5
    const-string v28, "[HtcMusic]"

    const-string v29, "service null, cannot stop plugin service"

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 2737
    :pswitch_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 2740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v16

    .line 2742
    .restart local v16       #isPlaying:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 2743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 2745
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->switchToDMP(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 2747
    .end local v16           #isPlaying:Z
    :catch_4
    move-exception v12

    .line 2748
    .restart local v12       #e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2550
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x13 -> :sswitch_2
        0x25 -> :sswitch_3
    .end sparse-switch

    .line 2679
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
    .line 2867
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v0, :cond_0

    .line 2868
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 2869
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    .line 2877
    :goto_0
    return-void

    .line 2875
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    const v8, 0x2080001

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 756
    const-string v4, "[HtcMusic]"

    const-string v5, "onConfigurationChanged"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget v4, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_0

    .line 758
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 846
    :goto_0
    return-void

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 764
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_1

    .line 765
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->detachNowPlayingView()V

    .line 769
    :cond_1
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 770
    iput-boolean v6, p0, Lcom/htc/music/HtcMusic;->mJustCreate:Z

    .line 772
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    .line 773
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 775
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v4, :cond_2

    .line 776
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 780
    :cond_2
    const v4, 0x7f080033

    invoke-virtual {p0, v4}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 782
    .local v0, group:Landroid/view/ViewGroup;
    const v4, 0x7f080068

    invoke-virtual {p0, v4}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 783
    .local v2, mainContainer:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 784
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 787
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 788
    .local v1, inflator:Landroid/view/LayoutInflater;
    const v4, 0x7f030027

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 789
    .local v3, view:Landroid/view/View;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    const v4, 0x7f080035

    invoke-virtual {p0, v4}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    .line 795
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 798
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initConstant()V

    .line 799
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPresentation()V

    .line 800
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v4, :cond_4

    .line 801
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAlpha(I)V

    .line 808
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPlayerInfo()V

    .line 810
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTaskbar()V

    .line 811
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTitleBar()V

    .line 812
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initToolTip()V

    .line 815
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    .line 816
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateGlider()V

    .line 818
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    .line 819
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 820
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    .line 822
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v4, :cond_5

    .line 823
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->m2DControl:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 824
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v4, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setGlobalBackgroundResource(I)V

    .line 827
    :cond_5
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_6

    .line 828
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->attachNowPlayingView()V

    .line 831
    :cond_6
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsRWScanOn:Z

    if-eqz v4, :cond_8

    .line 840
    :cond_7
    const-string v4, "ffstop"

    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->stopFFRWScan(Ljava/lang/String;)V

    .line 841
    iput-boolean v6, p0, Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z

    .line 842
    iput-boolean v6, p0, Lcom/htc/music/HtcMusic;->mIsRWScanOn:Z

    .line 845
    :cond_8
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsPlaybackControlEnabled:Z

    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->setPlaybackControlEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 445
    const-string v10, "[HtcMusic]"

    const-string v11, "onCreate() +"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 448
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 451
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 452
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v10, :cond_0

    .line 453
    new-instance v10, Lcom/htc/music/HtcMusic$EventReceiver;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/htc/music/HtcMusic$EventReceiver;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 454
    new-instance v1, Landroid/content/IntentFilter;

    const-string v10, "com.htc.music.lockscreen_start"

    invoke-direct {v1, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 455
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v1}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 458
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_0
    const-string v10, "from-lockscreen"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 460
    .local v3, isFromLockscreen:Z
    const-string v10, "[HtcMusic]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[onCreate] bp. value="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    if-eqz v3, :cond_1

    .line 462
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 463
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->disableKeyguard(Landroid/app/Activity;)V

    .line 473
    .end local v3           #isFromLockscreen:Z
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 474
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->CheckDLNAMode(Landroid/content/Intent;)V

    .line 475
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mInitAP:Z

    .line 476
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v10

    const/high16 v11, 0x10

    and-int/2addr v10, v11

    if-lez v10, :cond_2

    .line 477
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v10}, Lcom/htc/music/HtcMusic;->setIntent(Landroid/content/Intent;)V

    .line 478
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 481
    :cond_2
    const-string v10, "showEmptyQueue"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mShowEmptyQueue:Z

    .line 483
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 485
    .local v5, resources:Landroid/content/res/Resources;
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/htc/music/HtcMusic;->setVolumeControlStream(I)V

    .line 487
    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lcom/htc/music/HtcMusic;->requestWindowFeature(I)Z

    .line 490
    const/4 v10, 0x2

    iget v11, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-eq v10, v11, :cond_4

    const/4 v10, 0x3

    iget v11, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-ne v10, v11, :cond_5

    .line 491
    :cond_4
    const-string v10, "[HtcMusic]"

    const-string v11, "DMC mode, return directly"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_5
    new-instance v10, Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    invoke-direct {v10, p0}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Lcom/htc/wrap/android/media/HtcWrapAudioManager;

    .line 497
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    iput v10, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    .line 498
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportMMC()Z

    move-result v10

    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mIsSupportMMC:Z

    .line 502
    const v10, 0x7f030028

    invoke-virtual {p0, v10}, Lcom/htc/music/HtcMusic;->setContentView(I)V

    .line 503
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-nez v10, :cond_6

    .line 504
    new-instance v10, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 506
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    new-instance v11, Lcom/htc/music/HtcMusic$4;

    invoke-direct {v11, p0}, Lcom/htc/music/HtcMusic$4;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v10, v11}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 514
    :cond_6
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initGlider()V

    .line 528
    const/4 v10, 0x1

    iput v10, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    .line 529
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    .line 531
    if-eqz p1, :cond_a

    .line 532
    const-string v10, "configchange"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    .line 533
    const-string v10, "message"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    .line 534
    const-string v10, "downloadalbumartid"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 535
    const-string v10, "currentAudioId"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 536
    const-string v10, "currentAudioPath"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 537
    const-string v10, "shareText"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    .line 539
    const-string v10, "tempSelectedEQIndex"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 541
    .local v8, tempSelectedEQIndex:Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 543
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :cond_7
    :goto_1
    const-string v10, "tempSelectedSoundEffectIndex"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    .line 553
    const-string v10, "tempShowingEQIndex"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 554
    .local v9, tempShowingEQIndex:Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 556
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 562
    :cond_8
    :goto_2
    const-string v10, "ringtoneAudioPath"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 563
    .local v6, ringtoneAudioPath:Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 564
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-nez v10, :cond_9

    .line 565
    new-instance v10, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-direct {v10, p0, p0}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 567
    :cond_9
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const-string v11, "ringtoneAudioId"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioId(I)V

    .line 568
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v10, v6}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 569
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const-string v11, "ringtoneAudioType"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioType(I)V

    .line 575
    .end local v6           #ringtoneAudioPath:Ljava/lang/String;
    .end local v8           #tempSelectedEQIndex:Ljava/lang/String;
    .end local v9           #tempShowingEQIndex:Ljava/lang/String;
    :cond_a
    new-instance v10, Landroid/os/HandlerThread;

    const-string v11, "HtcMusicActivityWorker"

    invoke-direct {v10, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    .line 576
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 577
    new-instance v10, Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/htc/music/HtcMusic$NonUiHandler;-><init>(Lcom/htc/music/HtcMusic;Landroid/os/Looper;)V

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    .line 579
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-nez v10, :cond_b

    .line 580
    const-string v10, "[HtcMusic]"

    const-string v11, "onCreate()...mNonUiHandler is null!!!"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_b
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v10, :cond_c

    .line 584
    const-string v10, "Music"

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 587
    :cond_c
    const/4 v4, 0x0

    .line 588
    .local v4, nowPlayingViewOn:Z
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "ShowNowPlaying"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 590
    .local v7, showNowPlaying:I
    const/4 v10, -0x1

    if-ne v10, v7, :cond_f

    .line 591
    const/4 v4, 0x0

    .line 598
    :goto_3
    if-eqz v4, :cond_d

    .line 599
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 604
    :cond_d
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    .line 607
    new-instance v10, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 608
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mControllerListener:Lcom/htc/music/HtcMusic$ControllerListener;

    invoke-virtual {v10, v11}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V

    .line 610
    new-instance v10, Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;-><init>(Lcom/htc/music/HtcMusic;Lcom/htc/music/HtcMusic$1;)V

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mDmcPlaybackControlListener:Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;

    .line 611
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 612
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v10, "com.htc.music.dmcservice.set_playback_control_enabled"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 613
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mDmcPlaybackControlListener:Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;

    invoke-virtual {p0, v10, v1}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 615
    const-string v10, "[HtcMusic]"

    const-string v11, "onCreate() -"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    return-void

    .line 465
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v4           #nowPlayingViewOn:Z
    .end local v5           #resources:Landroid/content/res/Resources;
    .end local v7           #showNowPlaying:I
    .restart local v3       #isFromLockscreen:Z
    :cond_e
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 545
    .end local v3           #isFromLockscreen:Z
    .restart local v5       #resources:Landroid/content/res/Resources;
    .restart local v8       #tempSelectedEQIndex:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 546
    .local v0, ex:Ljava/lang/Exception;
    const/4 v10, -0x1

    iput v10, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    goto/16 :goto_1

    .line 557
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v9       #tempShowingEQIndex:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 558
    .restart local v0       #ex:Ljava/lang/Exception;
    const/4 v10, -0x1

    iput v10, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    goto/16 :goto_2

    .line 592
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v8           #tempSelectedEQIndex:Ljava/lang/String;
    .end local v9           #tempShowingEQIndex:Ljava/lang/String;
    .restart local v4       #nowPlayingViewOn:Z
    .restart local v7       #showNowPlaying:I
    :cond_f
    if-nez v7, :cond_10

    .line 593
    const/4 v4, 0x0

    goto :goto_3

    .line 595
    :cond_10
    const/4 v4, 0x1

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 24
    .parameter "id"

    .prologue
    .line 4977
    sparse-switch p1, :sswitch_data_0

    .line 5294
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v14

    :goto_0
    return-object v14

    .line 4979
    :sswitch_0
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v14

    goto :goto_0

    .line 4984
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

    const v21, 0x7f0700b8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    .line 4987
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

    .line 5007
    .local v14, repeatDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    goto :goto_0

    .line 5013
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

    .line 5025
    .local v5, dialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v14, v5

    .line 5026
    goto/16 :goto_0

    .line 5028
    .end local v5           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 5031
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 5034
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

    .line 5054
    .local v8, drmDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v14, v8

    .line 5055
    goto/16 :goto_0

    .line 5066
    .end local v8           #drmDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_4
    const/16 v20, 0x6

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 5067
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v11, v0, [Ljava/lang/CharSequence;

    const/16 v20, 0x0

    const v21, 0x7f0700b5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    const/16 v20, 0x1

    const v21, 0x7f0700b6

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

    .line 5079
    .restart local v11       #items:[Ljava/lang/CharSequence;
    :goto_1
    const/4 v15, 0x0

    .line 5080
    .local v15, ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 5081
    new-instance v20, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    .line 5082
    const-string v20, "[HtcMusic]"

    const-string v21, "Ringtonehelper is null!! this should never happen!!"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5085
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 5086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    move-object/from16 v20, v0

    const/16 v21, 0x13

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v15

    .line 5088
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    :cond_3
    move-object v14, v15

    .line 5091
    goto/16 :goto_0

    .line 5072
    .end local v11           #items:[Ljava/lang/CharSequence;
    .end local v15           #ringtoneDialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_4
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v11, v0, [Ljava/lang/CharSequence;

    const/16 v20, 0x0

    const v21, 0x7f0700b5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    const/16 v20, 0x1

    const v21, 0x7f0700b6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    .restart local v11       #items:[Ljava/lang/CharSequence;
    goto :goto_1

    .line 5094
    .end local v11           #items:[Ljava/lang/CharSequence;
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->createDownloadAlbumArtDialog()Landroid/app/Dialog;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    .line 5095
    const-string v20, "[HtcMusic]"

    const-string v21, "onCreateDialog DIALOG_DOWNLOAD_ALBUMART"

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5096
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 5099
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

    .line 5107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 5108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    .line 5110
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 5114
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

    .line 5118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 5119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    .line 5121
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 5125
    :sswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->createSoundEffectDialog()Landroid/app/Dialog;

    move-result-object v17

    .line 5126
    .local v17, soundEffectDialog:Landroid/app/Dialog;
    if-eqz v17, :cond_0

    move-object/from16 v14, v17

    .line 5127
    goto/16 :goto_0

    .line 5132
    .end local v17           #soundEffectDialog:Landroid/app/Dialog;
    :sswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->createEqualizerDialog()Landroid/app/Dialog;

    move-result-object v9

    .line 5133
    .local v9, equalizerDialog:Landroid/app/Dialog;
    if-eqz v9, :cond_0

    move-object v14, v9

    .line 5134
    goto/16 :goto_0

    .line 5139
    .end local v9           #equalizerDialog:Landroid/app/Dialog;
    :sswitch_a
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v11, v0, [Ljava/lang/CharSequence;

    const/16 v20, 0x0

    const v21, 0x7f070124

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    const/16 v20, 0x1

    const v21, 0x7f070125

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    .line 5142
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

    .line 5159
    .local v16, shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object/from16 v14, v16

    .line 5160
    goto/16 :goto_0

    .line 5164
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

    .line 5167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTextDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 5168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTextDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    .line 5170
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mTextDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 5175
    :sswitch_c
    const/4 v11, 0x0

    .line 5177
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

    .line 5178
    :cond_8
    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v11, v0, [Ljava/lang/CharSequence;

    .end local v11           #items:[Ljava/lang/CharSequence;
    const/16 v20, 0x0

    const v21, 0x7f0701cc

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

    .line 5190
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

    .line 5233
    .local v13, optionDialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v14, v13

    .line 5234
    goto/16 :goto_0

    .line 5184
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

    .line 5185
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

    .line 5238
    .end local v11           #items:[Ljava/lang/CharSequence;
    :sswitch_d
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 5239
    .local v10, inflater:Landroid/view/LayoutInflater;
    const v20, 0x7f030018

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 5240
    .local v19, view:Landroid/view/View;
    const v20, 0x7f080053

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/AutoCompleteTextView;

    .line 5241
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

    .line 5242
    .local v12, name:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 5243
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelectAllOnFocus(Z)V

    .line 5245
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

    .line 5260
    .local v4, createDialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v20, Lcom/htc/music/HtcMusic$EditTextWatcher;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/htc/music/HtcMusic$EditTextWatcher;-><init>(Lcom/htc/widget/HtcAlertDialog;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object v14, v4

    .line 5261
    goto/16 :goto_0

    .line 5264
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

    const v21, 0x7f0700d3

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

    .line 5274
    goto/16 :goto_0

    .line 5278
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

    .line 5288
    goto/16 :goto_0

    .line 5292
    .end local v7           #dmsDialog:Lcom/htc/widget/HtcAlertDialog;
    :sswitch_10
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->createConnectionFailDialog()Landroid/app/Dialog;

    move-result-object v14

    goto/16 :goto_0

    .line 4977
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

    .line 2200
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2202
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->onCreateActionMenu(Landroid/view/Menu;)V

    .line 2204
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v1, :cond_2

    .line 2205
    iget v1, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-ne v3, v1, :cond_1

    .line 2244
    :cond_0
    :goto_0
    return v0

    .line 2209
    :cond_1
    iput v3, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    .line 2210
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v0, p1}, Lcom/htc/music/NowPlayingViewHelper;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 2213
    :cond_2
    iget v1, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-eq v0, v1, :cond_0

    .line 2216
    iput v0, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    .line 2219
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    if-eqz v1, :cond_3

    .line 2220
    const/16 v1, 0x14

    const v2, 0x7f0700ee

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2224
    :cond_3
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSoundEnhancerEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2225
    const/16 v1, 0x28

    const v2, 0x7f07007c

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2228
    :cond_4
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2229
    const/16 v1, 0x15

    const v2, 0x7f07000b

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2232
    :cond_5
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2233
    const/16 v1, 0x25

    const v2, 0x7f0700c8

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x20800b5

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2238
    :cond_6
    const/16 v1, 0x20

    const v2, 0x2040216

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2240
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2241
    const/16 v1, 0x29

    const v2, 0x2040218

    invoke-interface {p1, v3, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2108
    const-string v1, "[HtcMusic]"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2112
    invoke-static {p0}, Lcom/htc/music/util/ScreenStatus;->unRegisterReceiver(Landroid/app/Activity;)V

    .line 2114
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 2115
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2116
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 2126
    :cond_0
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v1, :cond_1

    .line 2127
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy()V

    .line 2130
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->cleanMessage()V

    .line 2132
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v1, :cond_2

    .line 2133
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v1, v4}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2134
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    .line 2137
    :cond_2
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_3

    .line 2138
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 2139
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2148
    :cond_3
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearAlbumArtCache()V

    .line 2150
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_4

    .line 2151
    const-string v1, "Music"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 2154
    :cond_4
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ShowNowPlaying"

    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2163
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v1, :cond_5

    .line 2164
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v1, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V

    .line 2165
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 2168
    :cond_5
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v1, :cond_6

    .line 2169
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v1}, Lcom/htc/music/GliderAdapter;->deInit()V

    .line 2170
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    .line 2173
    :cond_6
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v1, :cond_7

    .line 2174
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->destroy()V

    .line 2175
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 2178
    :cond_7
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mDmcPlaybackControlListener:Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;

    if-eqz v1, :cond_8

    .line 2180
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mDmcPlaybackControlListener:Lcom/htc/music/HtcMusic$DmcPlaybackControlListener;

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2186
    :cond_8
    :goto_0
    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 2188
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2189
    const-string v1, "[HtcMusic]"

    const-string v2, "onDestroy finished"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    return-void

    .line 2181
    :catch_0
    move-exception v0

    .line 2182
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "[HtcMusic]"

    const-string v2, "unregisterReceiver mDmcPlaybackControlListener fail"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 3057
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 3059
    .local v0, repcnt:I
    iget v2, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->seekMethod1(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3097
    :cond_0
    :goto_0
    return v1

    .line 3059
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->seekMethod2(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3062
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 3097
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 3064
    :sswitch_0
    iget v2, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    rsub-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    goto :goto_0

    .line 3068
    :sswitch_1
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_3

    .line 3071
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/htc/music/widget/RepeatingImageButton;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3072
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/htc/music/widget/RepeatingImageButton;->requestFocus()Z

    .line 3075
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/music/HtcMusic;->scanBackward(IJ)V

    goto :goto_0

    .line 3078
    :sswitch_2
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_3

    .line 3081
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/htc/music/widget/RepeatingImageButton;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3082
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNextButton:Lcom/htc/music/widget/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/htc/music/widget/RepeatingImageButton;->requestFocus()Z

    .line 3085
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/music/HtcMusic;->scanForward(IJ)V

    goto :goto_0

    .line 3089
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->toggleShuffle()V

    goto :goto_0

    .line 3062
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

    .line 2965
    sparse-switch p1, :sswitch_data_0

    .line 3015
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 2967
    :sswitch_0
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_0

    .line 2970
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_2

    .line 2971
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 2972
    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->canRewind()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2973
    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->prev()V

    .line 2983
    :cond_2
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 2984
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    goto :goto_1

    .line 3013
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2975
    :cond_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    goto :goto_2

    .line 2978
    :cond_4
    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/music/HtcMusic;->scanBackward(IJ)V

    .line 2980
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    goto :goto_2

    .line 2987
    :sswitch_1
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_0

    .line 2990
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_5

    .line 2991
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    if-nez v2, :cond_6

    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    .line 2992
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->next()V

    .line 2999
    :cond_5
    :goto_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    .line 3000
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    goto :goto_1

    .line 2994
    :cond_6
    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/music/HtcMusic;->scanForward(IJ)V

    .line 2996
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    goto :goto_3

    .line 3003
    :sswitch_2
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 3004
    .local v0, searchManager:Landroid/app/SearchManager;
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    if-eqz v1, :cond_7

    .line 3005
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 3006
    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    goto/16 :goto_0

    .line 3008
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 3009
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/music/HtcMusic;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2965
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x54 -> :sswitch_2
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 1843
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->setIntent(Landroid/content/Intent;)V

    .line 1846
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1847
    const-string v3, "from-lockscreen"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1849
    .local v0, isFromLockscreen:Z
    const-string v3, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onNewIntent] bp. value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    if-eqz v0, :cond_0

    .line 1851
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1852
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->disableKeyguard(Landroid/app/Activity;)V

    .line 1859
    .end local v0           #isFromLockscreen:Z
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v3, :cond_1

    .line 1861
    const-string v3, "ShowNowPlaying"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1863
    .local v1, showNowPlaying:Z
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 1866
    .end local v1           #showNowPlaying:Z
    :cond_1
    if-eqz p1, :cond_3

    .line 1867
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1868
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1869
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_2

    .line 1870
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->onServiceConnectedHandle()V

    .line 1875
    :cond_2
    const-string v3, "directmode"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    .line 1876
    const-string v3, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get (on new) intent directmode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    return-void

    .line 1854
    .restart local v0       #isFromLockscreen:Z
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->enableKeyguardNow(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 2477
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->enableKeyguard(Landroid/app/Activity;)V

    .line 2479
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->onActionMenuSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2523
    :goto_0
    return v2

    .line 2483
    :cond_0
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    iget v4, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v3, :cond_1

    .line 2485
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v2, p1}, Lcom/htc/music/NowPlayingViewHelper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 2490
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2523
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 2492
    :sswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->launchProperty()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2520
    :catch_0
    move-exception v0

    .line 2521
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2496
    .end local v0           #ex:Ljava/lang/Exception;
    :sswitch_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, v2, v3}, Lcom/htc/music/HtcMusic;->launchDMR(IZ)V

    goto :goto_1

    .line 2500
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2501
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->launchGlobalSoundEffectSetting()V

    goto :goto_0

    .line 2504
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->showSoundEffectDialog()V

    goto :goto_0

    .line 2510
    :sswitch_3
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    .line 2514
    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2516
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2490
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
    .line 2065
    const-string v2, "[HtcMusic]"

    const-string v3, "onPause"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v2, :cond_0

    .line 2068
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->onPause()V

    .line 2071
    :cond_0
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v2, :cond_1

    .line 2072
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v2}, Lcom/htc/music/NowPlayingViewHelper;->onPause()V

    .line 2075
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2077
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    .line 2079
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSoundEnhancerEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2080
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v2, p0}, Lcom/htc/music/util/HeadSetHelper;->stopMonitor(Landroid/content/Context;)V

    .line 2081
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-virtual {v2}, Lcom/htc/music/util/HdmiPlugReceiver;->deInitInstance()Z

    .line 2084
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2085
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2086
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x400001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2087
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

    .line 2088
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2097
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v2, :cond_3

    .line 2098
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v2}, Lcom/htc/music/GliderAdapter;->pauseDecoder()V

    .line 2101
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setDLNAPreloadEnable(Z)V

    .line 2103
    const-string v2, "[HtcMusic]"

    const-string v3, "onPause finished"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v3, 0x1

    .line 5323
    iput p1, p0, Lcom/htc/music/HtcMusic;->activeDialog:I

    .line 5324
    packed-switch p1, :pswitch_data_0

    .line 5428
    .end local p2
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 5326
    .restart local p2
    :pswitch_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5327
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5335
    .restart local p2
    :pswitch_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 5340
    .restart local p2
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/htc/music/HtcMusic;->prepareDownloadAlbumArtDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 5370
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initializeSoundEffectDialog()V

    goto :goto_0

    .line 5374
    :pswitch_5
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 5375
    .local v1, listview:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 5376
    iget v2, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 5377
    iget v2, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 5385
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

    .line 5400
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

    .line 5402
    iget v2, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-nez v2, :cond_0

    .line 5405
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5406
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v2

    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 5408
    iget v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v2, :cond_1

    .line 5409
    const-string v2, "[HtcMusic]"

    const-string v3, "mCurrentAudioId < 0"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5416
    :catch_0
    move-exception v0

    .line 5417
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

    .line 5418
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 5419
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 5420
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    goto/16 :goto_0

    .line 5413
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 5414
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 5324
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

    .line 2328
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->onPrepareActionMenu(Landroid/view/Menu;)V

    .line 2330
    iget-boolean v6, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v6, :cond_2

    .line 2331
    iget v4, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-eq v7, v4, :cond_0

    .line 2333
    invoke-interface {p1, v7}, Landroid/view/Menu;->removeGroup(I)V

    .line 2334
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2337
    :cond_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4, p1}, Lcom/htc/music/NowPlayingViewHelper;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    .line 2410
    :cond_1
    :goto_0
    return v4

    .line 2340
    :cond_2
    iget v6, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-eq v4, v6, :cond_3

    .line 2342
    invoke-interface {p1, v7}, Landroid/view/Menu;->removeGroup(I)V

    .line 2343
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2346
    :cond_3
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v6, :cond_1

    .line 2350
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v3

    .line 2353
    .local v3, nDlnaMode:I
    const/16 v6, 0x14

    :try_start_0
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2354
    .local v0, downloadAlbumArtMenu:Landroid/view/MenuItem;
    if-eqz v0, :cond_4

    .line 2355
    if-nez v3, :cond_5

    .line 2356
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v6

    iput v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 2357
    iget v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-ltz v6, :cond_1

    .line 2359
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2365
    :cond_4
    :goto_1
    iget-boolean v6, p0, Lcom/htc/music/HtcMusic;->mBlockMenu:Z

    if-ne v4, v6, :cond_b

    move v4, v5

    .line 2366
    goto :goto_0

    .line 2361
    :cond_5
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2372
    .end local v0           #downloadAlbumArtMenu:Landroid/view/MenuItem;
    :catch_0
    move-exception v1

    .line 2373
    .local v1, ex:Landroid/os/RemoteException;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 2374
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    .line 2375
    iput v5, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    .line 2378
    .end local v1           #ex:Landroid/os/RemoteException;
    :goto_2
    const/4 v2, 0x0

    .line 2380
    .local v2, menuItem:Landroid/view/MenuItem;
    const/16 v6, 0x28

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2381
    if-eqz v2, :cond_7

    .line 2382
    if-eqz v3, :cond_6

    if-ne v4, v3, :cond_c

    .line 2384
    :cond_6
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2390
    :cond_7
    :goto_3
    const/16 v6, 0x15

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2391
    if-eqz v2, :cond_9

    .line 2392
    if-eqz v3, :cond_8

    const/4 v6, 0x3

    if-ne v6, v3, :cond_d

    .line 2394
    :cond_8
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2400
    :cond_9
    :goto_4
    const/16 v6, 0x2e

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2401
    if-eqz v2, :cond_1

    .line 2402
    if-eqz v3, :cond_a

    if-ne v4, v3, :cond_e

    .line 2404
    :cond_a
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2369
    .end local v2           #menuItem:Landroid/view/MenuItem;
    .restart local v0       #downloadAlbumArtMenu:Landroid/view/MenuItem;
    :cond_b
    :try_start_1
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    .line 2370
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2386
    .end local v0           #downloadAlbumArtMenu:Landroid/view/MenuItem;
    .restart local v2       #menuItem:Landroid/view/MenuItem;
    :cond_c
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 2396
    :cond_d
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 2406
    :cond_e
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1883
    const-string v8, "[HtcMusic]"

    const-string v9, "onResume +"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    const-string v8, "power"

    invoke-virtual {p0, v8}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 1888
    .local v6, pMgr:Landroid/os/PowerManager;
    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1889
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1986
    :goto_0
    return-void

    .line 1894
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doStart()V

    .line 1896
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v8, :cond_1

    .line 1897
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v8}, Lcom/htc/sunny2/view/SSurfaceView;->onResume()V

    .line 1900
    :cond_1
    const/4 v8, 0x2

    iget v9, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-eq v8, v9, :cond_2

    const/4 v8, 0x3

    iget v9, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-ne v8, v9, :cond_3

    .line 1901
    :cond_2
    const-string v8, "[HtcMusic]"

    const-string v9, "DMC/Push mode..."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    :cond_3
    iput-boolean v12, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    .line 1908
    iget-boolean v8, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v8, :cond_4

    .line 1909
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v8}, Lcom/htc/music/NowPlayingViewHelper;->onResume()V

    .line 1912
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

    .line 1915
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    if-eqz v8, :cond_5

    .line 1916
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v8}, Lcom/htc/music/HtcMusic;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1920
    :cond_5
    const/16 v8, 0x12

    invoke-virtual {p0, v8}, Lcom/htc/music/HtcMusic;->removeDialog(I)V

    .line 1921
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1923
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v8, :cond_6

    .line 1924
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v8}, Lcom/htc/music/GliderAdapter;->resumeDecoder()V

    .line 1927
    :cond_6
    iput-boolean v12, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    .line 1929
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSoundEnhancerEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1932
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1933
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v8}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPluggedCacheValue()Z

    move-result v3

    .line 1935
    .local v3, isWiredPluggedLastTime:Z
    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v2

    .line 1936
    .local v2, isWiredPlugged:Z
    if-eq v3, v2, :cond_7

    .line 1937
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->wiredHeadSetStatusChanged(Z)V

    .line 1950
    .end local v2           #isWiredPlugged:Z
    .end local v3           #isWiredPluggedLastTime:Z
    :cond_7
    :goto_1
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v8, p0, p0}, Lcom/htc/music/util/HeadSetHelper;->startMonitor(Landroid/content/Context;Lcom/htc/music/util/IMonitorHeadSetStatus;)V

    .line 1951
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-virtual {v8, p0, p0}, Lcom/htc/music/util/HdmiPlugReceiver;->initInstance(Landroid/content/Context;Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;)Z

    .line 1954
    :cond_8
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    .line 1955
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    .line 1956
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v4

    .line 1957
    .local v4, next:J
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_9

    .line 1959
    :try_start_0
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1960
    invoke-direct {p0, v4, v5}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1965
    :cond_9
    :goto_2
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkedInternalStorageWhenResume(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1966
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto/16 :goto_0

    .line 1940
    .end local v4           #next:J
    :cond_a
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v8}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPluggedCacheValue()Z

    move-result v1

    .line 1942
    .local v1, headsetPreviousStatus:Z
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    .line 1945
    .local v0, headsetLatestStatus:Z
    if-eq v1, v0, :cond_7

    .line 1946
    invoke-virtual {p0, v0, v12}, Lcom/htc/music/HtcMusic;->headSetStatusChanged(ZZ)V

    goto :goto_1

    .line 1970
    .end local v0           #headsetLatestStatus:Z
    .end local v1           #headsetPreviousStatus:Z
    .restart local v4       #next:J
    :cond_b
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/htc/music/HtcMusic$20;

    invoke-direct {v8, p0}, Lcom/htc/music/HtcMusic$20;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1976
    .local v7, setHeadsetOwnerThread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1978
    iget-boolean v8, p0, Lcom/htc/music/HtcMusic;->mJustCreate:Z

    if-eqz v8, :cond_c

    .line 1979
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v8

    new-instance v9, Lcom/htc/music/HtcMusic$InitialUIIdlehandler;

    invoke-direct {v9, p0}, Lcom/htc/music/HtcMusic$InitialUIIdlehandler;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v8, v9}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1980
    iput-boolean v12, p0, Lcom/htc/music/HtcMusic;->mJustCreate:Z

    .line 1983
    :cond_c
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/htc/music/HtcMusic;->setDLNAPreloadEnable(Z)V

    .line 1985
    const-string v8, "[HtcMusic]"

    const-string v9, "onResume -"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1961
    .end local v7           #setHeadsetOwnerThread:Ljava/lang/Thread;
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1696
    const-string v1, "configchange"

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1697
    const-string v0, "message"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    const-string v0, "downloadalbumartid"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1700
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

    .line 1702
    :cond_1
    const-string v0, "currentAudioId"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1703
    const-string v0, "currentAudioPath"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTextDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTextDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1707
    const-string v0, "shareText"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    :cond_3
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1711
    const-string v0, "tempSelectedEQIndex"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    :cond_4
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1716
    const-string v0, "tempShowingEQIndex"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    const-string v0, "tempSelectedSoundEffectIndex"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    iget-object v1, v1, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    :cond_5
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v0, :cond_6

    .line 1723
    const-string v0, "ringtoneAudioPath"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->getAudioPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    const-string v0, "ringtoneAudioId"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->getAudioId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1726
    const-string v0, "ringtoneAudioType"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->getAudioType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1730
    :cond_6
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->removeDialog(I)V

    .line 1731
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->removeDialog(I)V

    .line 1733
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1734
    return-void

    .line 1696
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onSelectionChange(I)V
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 6243
    new-instance v0, Lcom/htc/music/HtcMusic$39;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/HtcMusic$39;-><init>(Lcom/htc/music/HtcMusic;I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6248
    return-void
.end method

.method public onSelectionChangeUI(I)V
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 6252
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v0, :cond_0

    .line 6253
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/GliderAdapter;->onSelectionChanged(I)V

    .line 6255
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1738
    const-string v1, "[HtcMusic]"

    const-string v2, "[HtcMusic][onStart Begin]"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1741
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->dismissActiveDialog()V

    .line 1745
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1746
    .local v0, pMgr:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1759
    :goto_0
    return-void

    .line 1750
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doStart()V

    .line 1752
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1753
    invoke-static {p0}, Lcom/htc/music/util/ScreenStatus;->registerReceiver(Landroid/app/Activity;)V

    .line 1756
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->registerTVDisplayHelper()V

    .line 1758
    const-string v1, "[HtcMusic]"

    const-string v2, "[HtcMusic][onStart End]"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStateChange(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 6260
    new-instance v0, Lcom/htc/music/HtcMusic$40;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/HtcMusic$40;-><init>(Lcom/htc/music/HtcMusic;I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6265
    return-void
.end method

.method public onStateChangeUI(I)V
    .locals 8
    .parameter "nState"

    .prologue
    const/16 v7, 0x12

    const/4 v6, 0x1

    .line 6269
    iput p1, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    .line 6271
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_1

    .line 6309
    :cond_0
    :goto_0
    return-void

    .line 6273
    :cond_1
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v4, :cond_0

    .line 6276
    if-ne v7, p1, :cond_2

    .line 6277
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 6279
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAnimationStatus()Z

    move-result v3

    .line 6280
    .local v3, status:Z
    if-eqz v3, :cond_4

    .line 6281
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V

    .line 6296
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

    .line 6300
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    .line 6301
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v4, :cond_0

    .line 6302
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6306
    :catch_0
    move-exception v0

    .line 6307
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 6282
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v3       #status:Z
    :cond_4
    :try_start_1
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    if-ne v6, v4, :cond_2

    .line 6283
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getSelection()I

    move-result v2

    .line 6284
    .local v2, position:I
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v4

    if-eq v4, v2, :cond_2

    .line 6285
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v4, :cond_2

    .line 6286
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/htc/music/HtcMusic$NonUiHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 6288
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 6289
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v1, v5, v6}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 6303
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #position:I
    .end local v3           #status:Z
    :cond_5
    if-ne v7, p1, :cond_0

    .line 6304
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

    .line 1553
    const-string v2, "[HtcMusic]"

    const-string v3, "onStop"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1557
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 1558
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V

    .line 1562
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1563
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 1566
    :cond_1
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v2, :cond_3

    .line 1567
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v2}, Lcom/htc/music/NowPlayingViewHelper;->onStop()V

    .line 1569
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_2

    .line 1570
    const-string v2, "Music"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    .line 1573
    :cond_2
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "NOW_PLAYING_SWITCH"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1575
    .local v1, nowPlayingViewOn:Z
    if-eqz v1, :cond_9

    .line 1578
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "NOW_PLAYING_SWITCH"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1585
    .end local v1           #nowPlayingViewOn:Z
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v2, :cond_4

    .line 1586
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v2, v5}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 1587
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 1588
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    .line 1591
    :cond_4
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1592
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1594
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 1598
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1602
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mDMCServiceListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1607
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1612
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_5

    .line 1613
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->activityGoSleep()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1619
    :cond_5
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1620
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    if-eqz v2, :cond_6

    .line 1621
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 1622
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    .line 1624
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 1625
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1628
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_6
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1631
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mInitAP:Z

    .line 1632
    iput-object v6, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    .line 1633
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v2, :cond_7

    .line 1634
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    .line 1640
    :cond_7
    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mStartActionFinished:Z

    .line 1642
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->releaseTVDisplayHelper()V

    .line 1644
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v2, :cond_8

    .line 1645
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->disconnect()V

    .line 1648
    :cond_8
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1649
    const-string v2, "[HtcMusic]"

    const-string v3, "onStop finished"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    return-void

    .line 1581
    .restart local v1       #nowPlayingViewOn:Z
    :cond_9
    invoke-virtual {p0, v4}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    goto/16 :goto_0

    .line 1614
    .end local v1           #nowPlayingViewOn:Z
    :catch_0
    move-exception v0

    .line 1615
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 1628
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 1626
    :catch_1
    move-exception v2

    .line 1628
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_6

    .line 1608
    :catch_2
    move-exception v2

    goto :goto_4

    .line 1603
    :catch_3
    move-exception v2

    goto :goto_3

    .line 1599
    :catch_4
    move-exception v2

    goto :goto_2

    .line 1595
    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method public plugOutBeatsHeadsetHandle()V
    .locals 4

    .prologue
    .line 6749
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6750
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 6753
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyleIndex(Landroid/content/Context;)I

    move-result v2

    .line 6755
    .local v2, styleIndex:I
    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    .line 6756
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    .line 6759
    const/4 v1, 0x0

    .line 6760
    .local v1, iResourceID:I
    const/4 v0, 0x1

    .line 6761
    .local v0, bShowToast:Z
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6764
    const/4 v0, 0x0

    .line 6795
    :goto_0
    if-eqz v0, :cond_1

    .line 6796
    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 6797
    :cond_1
    return-void

    .line 6772
    :cond_2
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6774
    const v1, 0x2040255

    goto :goto_0

    .line 6785
    :cond_3
    const v1, 0x7f0700a4

    goto :goto_0
.end method

.method prepareDownloadAlbumArtDialog(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 7708
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->queryUpdateAlbumArtSetting()Z

    move-result v0

    .line 7709
    .local v0, isAutoUpdate:Z
    invoke-virtual {p0, p1, v0}, Lcom/htc/music/HtcMusic;->syncAutoUpdateCheckBox(Landroid/app/Dialog;Z)V

    .line 7710
    invoke-virtual {p0, p1, v0}, Lcom/htc/music/HtcMusic;->syncUpdateAllAlbumArtItem(Landroid/app/Dialog;Z)V

    .line 7711
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->syncUpdateCurrentAlbum(Landroid/app/Dialog;)V

    .line 7712
    return-void
.end method

.method setAsResetCurrentItem(Lcom/htc/widget/HtcListItem;)V
    .locals 3
    .parameter "listItem"

    .prologue
    .line 7789
    const v1, 0x7f080024

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 7791
    .local v0, lineText:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 7792
    const v1, 0x7f0700f1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 7793
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 7794
    new-instance v1, Lcom/htc/music/HtcMusic$ResetCurrentAlbumClickListener;

    invoke-direct {v1, p0}, Lcom/htc/music/HtcMusic$ResetCurrentAlbumClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7795
    const-string v1, "[HtcMusic]"

    const-string v2, "reset current albumart enable"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7796
    return-void
.end method

.method setAsUpdateCurrentItem(Lcom/htc/widget/HtcListItem;)V
    .locals 3
    .parameter "listItem"

    .prologue
    .line 7779
    const v1, 0x7f080024

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 7781
    .local v0, lineText:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 7782
    const v1, 0x7f0700f0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 7783
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 7784
    new-instance v1, Lcom/htc/music/HtcMusic$UpdateCurrentAlbumClickListener;

    invoke-direct {v1, p0}, Lcom/htc/music/HtcMusic$UpdateCurrentAlbumClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7785
    const-string v1, "[HtcMusic]"

    const-string v2, "update current albumart"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7786
    return-void
.end method

.method public setEQSelectedIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 7320
    iput p1, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    .line 7322
    return-void
.end method

.method public setNowPlayingVisible(Z)V
    .locals 8
    .parameter "setVisible"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 5660
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-ne v3, p1, :cond_1

    .line 5721
    :cond_0
    :goto_0
    return-void

    .line 5663
    :cond_1
    if-eqz p1, :cond_5

    .line 5664
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5665
    .local v0, intent:Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "com.htc.media/track"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5666
    const-string v3, "isnowplayinglist"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5668
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-nez v3, :cond_4

    .line 5669
    new-instance v3, Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {v3, p0}, Lcom/htc/music/NowPlayingViewHelper;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    .line 5670
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v3, v0, v7}, Lcom/htc/music/NowPlayingViewHelper;->onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 5675
    :goto_1
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v3}, Lcom/htc/music/NowPlayingViewHelper;->onStart()V

    .line 5676
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v3}, Lcom/htc/music/NowPlayingViewHelper;->onResume()V

    .line 5678
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->attachNowPlayingView()V

    .line 5693
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    :goto_2
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    .line 5695
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    if-eqz v3, :cond_0

    .line 5696
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v4, 0x2c

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 5697
    .local v1, queue:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mMenu:Landroid/view/Menu;

    const/16 v4, 0x2d

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 5699
    .local v2, soundhound:Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v3, :cond_7

    .line 5702
    if-eqz v1, :cond_3

    .line 5703
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5705
    :cond_3
    if-eqz v2, :cond_0

    .line 5706
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 5672
    .end local v1           #queue:Landroid/view/MenuItem;
    .end local v2           #soundhound:Landroid/view/MenuItem;
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v3, v0}, Lcom/htc/music/NowPlayingViewHelper;->onNewIntent(Landroid/content/Intent;)V

    .line 5673
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v3}, Lcom/htc/music/NowPlayingViewHelper;->onRestart()V

    goto :goto_1

    .line 5680
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v3, :cond_2

    .line 5681
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v3, :cond_6

    .line 5682
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setVisibility(Z)V

    .line 5684
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->requestLayout()V

    .line 5687
    :cond_6
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->detachNowPlayingView()V

    .line 5688
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v3}, Lcom/htc/music/NowPlayingViewHelper;->finish()V

    .line 5689
    iput-object v7, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    goto :goto_2

    .line 5712
    .restart local v1       #queue:Landroid/view/MenuItem;
    .restart local v2       #soundhound:Landroid/view/MenuItem;
    :cond_7
    if-eqz v1, :cond_8

    .line 5713
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5715
    :cond_8
    if-eqz v2, :cond_0

    .line 5716
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected setProgressTimeIndicator()V
    .locals 8

    .prologue
    .line 7936
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mProgressPopup:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 7938
    :try_start_0
    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v0

    .line 7939
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

    .line 7945
    .end local v0           #pos:J
    :cond_0
    :goto_1
    return-void

    .line 7938
    :cond_1
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7942
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected showNewDialog(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 7927
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/HtcMusic;->showNewDialog(ILandroid/os/Bundle;)V

    .line 7928
    return-void
.end method

.method protected showNewDialog(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "args"

    .prologue
    .line 7931
    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->removeDialog(I)V

    .line 7932
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/HtcMusic;->showDialog(ILandroid/os/Bundle;)Z

    .line 7933
    return-void
.end method

.method public showSoundEffectDialog()V
    .locals 2

    .prologue
    const v1, 0x2040255

    .line 7037
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 7038
    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, mService is null!!! Can\'t show sound enhancer dialog."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7083
    :goto_0
    return-void

    .line 7046
    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7048
    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7049
    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, HDMI is plugged and Headset is Not plugged. return."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7059
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7060
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7066
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7067
    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7068
    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, Beats do not support HDMI out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7072
    :cond_2
    const v0, 0x7f0700a4

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    .line 7073
    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, Beats do not support Speaker out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7080
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    .line 7081
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    .line 7082
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
    .line 3104
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3105
    .local v2, mIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3106
    const-string v3, "content://servo_search/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3107
    const-string v3, "CATEGORY_ORDER"

    const-string v4, "media/audio"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3108
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3110
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 3111
    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 3123
    :cond_0
    :goto_0
    return-void

    .line 3113
    :cond_1
    iget v3, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-nez v3, :cond_0

    .line 3114
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.music.intent.action.LOCALSEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3116
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3117
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method switchToDMP(Z)V
    .locals 9
    .parameter "isPlaying"

    .prologue
    .line 3434
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const-string v6, "com.htc.music.DMPMusicPlaybackService"

    invoke-interface {v5, v6}, Lcom/htc/music/IMediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    .line 3436
    const-string v5, "DLNA"

    const/4 v6, 0x5

    invoke-virtual {p0, v5, v6}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 3438
    .local v4, pref:Landroid/content/SharedPreferences;
    const-string v5, "switchDMP"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3440
    .local v0, Switch:Z
    if-eqz v0, :cond_2

    .line 3441
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3442
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->stop()V

    .line 3444
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3446
    .local v3, i:Landroid/content/Intent;
    const-string v5, "command"

    const-string v6, "com.htc.music.refreshplaylist"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3449
    const-string v2, ""

    .line 3450
    .local v2, emptyStr:Ljava/lang/String;
    const-string v5, "server"

    const-string v6, "server"

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3452
    const-string v5, "container"

    const-string v6, "container"

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3454
    const-string v5, "content"

    const-string v6, "content"

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3456
    const-string v5, "startIdx"

    const-string v6, "startIdx"

    const-wide/16 v7, -0x1

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3458
    const-string v5, "endIdx"

    const-string v6, "endIdx"

    const-wide/16 v7, -0x1

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3460
    const-string v5, "direction"

    const-string v6, "direction"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3463
    const-string v5, "dmsFilePath"

    const-string v6, "filepath"

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3467
    if-eqz p1, :cond_1

    .line 3468
    const-string v5, "forcePlay"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3470
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3472
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "switchDMP"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3478
    .end local v0           #Switch:Z
    .end local v2           #emptyStr:Ljava/lang/String;
    .end local v3           #i:Landroid/content/Intent;
    .end local v4           #pref:Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    return-void

    .line 3475
    :catch_0
    move-exception v1

    .line 3476
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method syncAutoUpdateCheckBox(Landroid/app/Dialog;Z)V
    .locals 3
    .parameter "dialog"
    .parameter "isAutoUpdate"

    .prologue
    .line 7715
    const v2, 0x7f08005d

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    .line 7717
    .local v1, autoUpdate:Lcom/htc/widget/HtcListItem;
    const v2, 0x7f080060

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcCheckBox;

    .line 7719
    .local v0, audoUpdateCheckBox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v0, :cond_0

    .line 7720
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 7722
    :cond_0
    return-void
.end method

.method syncUpdateAllAlbumArtItem(Landroid/app/Dialog;Z)V
    .locals 2
    .parameter "dialog"
    .parameter "isAutoUpdate"

    .prologue
    .line 7725
    const v1, 0x7f08005e

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem;

    .line 7727
    .local v0, updateAllAlbumArt:Lcom/htc/widget/HtcListItem;
    if-eqz v0, :cond_0

    .line 7728
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem;->setEnabled(Z)V

    .line 7730
    :cond_0
    return-void

    .line 7728
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method syncUpdateCurrentAlbum(Landroid/app/Dialog;)V
    .locals 11
    .parameter "dialog"

    .prologue
    .line 7733
    const/4 v7, 0x0

    .line 7735
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7736
    .local v0, resolver:Landroid/content/ContentResolver;
    iget v6, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 7737
    .local v6, currentAlbumId:I
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 7738
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v6

    .line 7739
    iput v6, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    .line 7741
    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "dl_data"

    aput-object v4, v2, v1

    .line 7742
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

    .line 7744
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 7748
    const v1, 0x7f08005f

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItem;

    .line 7750
    .local v9, listItem:Lcom/htc/widget/HtcListItem;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7751
    const-string v1, "dl_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 7754
    .local v10, path:Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 7755
    :cond_1
    invoke-virtual {p0, v9}, Lcom/htc/music/HtcMusic;->setAsUpdateCurrentItem(Lcom/htc/widget/HtcListItem;)V

    .line 7759
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7771
    .end local v10           #path:Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_2

    .line 7772
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7773
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #currentAlbumId:I
    .end local v9           #listItem:Lcom/htc/widget/HtcListItem;
    :goto_2
    const/4 v7, 0x0

    .line 7776
    :cond_2
    return-void

    .line 7757
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

    .line 7763
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #currentAlbumId:I
    .end local v9           #listItem:Lcom/htc/widget/HtcListItem;
    .end local v10           #path:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 7764
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

    .line 7771
    if-eqz v7, :cond_2

    .line 7772
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 7761
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

    .line 7766
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #currentAlbumId:I
    .end local v9           #listItem:Lcom/htc/widget/HtcListItem;
    :catch_1
    move-exception v8

    .line 7767
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

    .line 7771
    if-eqz v7, :cond_2

    .line 7772
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 7771
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    .line 7772
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7773
    const/4 v7, 0x0

    .line 7771
    :cond_5
    throw v1
.end method

.method public wiredHeadSetStatusChanged(Z)V
    .locals 1
    .parameter "newStatus"

    .prologue
    .line 6520
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6555
    :cond_0
    return-void
.end method
