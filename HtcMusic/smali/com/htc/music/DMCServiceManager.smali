.class public Lcom/htc/music/DMCServiceManager;
.super Ljava/lang/Object;
.source "DMCServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/DMCServiceManager$SwitchTimerTask;,
        Lcom/htc/music/DMCServiceManager$PgTimerTask;,
        Lcom/htc/music/DMCServiceManager$PosTimerTask;,
        Lcom/htc/music/DMCServiceManager$DMCStatus;,
        Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x190

.field private static final CREATE_MEDIA_CONTROLLER_EXIST:I = 0x2

.field private static final CREATE_MEDIA_CONTROLLER_FAILED:I = 0x0

.field private static final CREATE_MEDIA_CONTROLLER_NEW:I = 0x1

.field public static final DIALOG_DMR_CANNOTPLAY:I = 0x3

.field public static final DIALOG_DMR_DISCONNECT:I = 0x0

.field public static final DIALOG_DMR_REQTIMEOUT:I = 0x1

.field public static final DIALOG_DMS_DISCONNECT:I = 0x2

.field public static final DIALOG_WIFI_ERROR:I = 0x4

.field private static final DLNA_COOKIE_GALLERY:I = 0x0

.field private static final DLNA_COOKIE_MUSIC:I = 0x1

.field public static final DLNA_DMC_AUDIO_PAUSE:Ljava/lang/String; = "com.htc.dlnamiddlelayer.dmc_audio_pause"

.field public static final DLNA_DMC_AUDIO_PLAY:Ljava/lang/String; = "com.htc.dlnamiddlelayer.dmc_audio_play"

.field public static final DLNA_DMC_PHOTO_START:Ljava/lang/String; = "com.htc.dlnamiddlelayer.dmc_photo_start"

.field public static final DLNA_DMC_PHOTO_STOP:Ljava/lang/String; = "com.htc.dlnamiddlelayer.dmc_photo_stop"

.field public static final DLNA_DMC_VIDEO_PAUSE:Ljava/lang/String; = "com.htc.dlnamiddlelayer.dmc_video_pause"

.field public static final DLNA_DMC_VIDEO_PLAY:Ljava/lang/String; = "com.htc.dlnamiddlelayer.dmc_video_play"

.field private static final DLNA_MODE_MUSIC:I = 0x1

.field private static final DLNA_MODE_PHOTO:I = 0x2

.field private static final DLNA_MODE_VIDEO:I = 0x0

.field private static final DMCAPP_STATUS:I = 0x12d

.field public static final DMC_FORCE_OFF:I = 0x2

.field public static final DMC_FORCE_ON:I = 0x1

.field public static final DMC_NOFORCE:I = 0x0

.field private static final DMC_TIMEOUT_KEY:Ljava/lang/String; = "dmc_timeout_setting"

.field public static final INTENT_ACTION_ADDTOPLAYLIST:Ljava/lang/String; = "com.htc.dmc.addtoplaylist"

.field public static final INTENT_ACTION_PLAY:Ljava/lang/String; = "com.htc.dmc.play"

.field public static final INTENT_ACTION_SETSTATESYNC:Ljava/lang/String; = "com.htc.dmc.setstatesync"

.field public static final INTENT_ACTION_SHOWDETAILS:Ljava/lang/String; = "com.htc.dmc.showdetails"

.field private static final LANDSCAPE_GALLERY_PANEL:I = 0xf

.field private static final LANDSCAPE_MUSIC_PANEL:I = 0x6

.field private static final MENU_ADDTOPLAYLIST:I = 0x4b6

.field private static final MENU_CHANGEORDER:I = 0x4b7

.field private static final MENU_EDITNP:I = 0x4b5

.field private static final MENU_PROPERTIES:I = 0x4b3

.field private static final MENU_REPEAT:I = 0x4b2

.field private static final MENU_SETTINGS:I = 0x4b4

.field private static final MENU_SHUFFLE:I = 0x4b1

.field public static final META_CHANGED:Ljava/lang/String; = "com.htc.music.dmcsvcman.metachanged"

.field private static final NOTIFY_CTRL_ERROR:I = 0x64

.field private static final NOTIFY_CTRL_RESPONSE:I = 0x65

.field private static final NOTIFY_DMR_MSG_TIMEOUT:I = 0x69

.field private static final NOTIFY_DMR_REMOVED:I = 0x67

.field private static final NOTIFY_DMR_TIMEOUT:I = 0x68

.field private static final NOTIFY_DMS_REMOVED:I = 0x6a

.field private static final NOTIFY_SHOW_DETAILS:I = 0x6b

.field private static final NOTIFY_VOLBLOCK_TIMEOUT:I = 0xca

.field private static final NOTIFY_VOLUI_TIMEOUT:I = 0xc9

.field private static final NOTIFY_WANT_POWEROFF:I = 0x66

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.dmcsvcman.playstatechanged"

.field private static final PORTRAIT_NORMAL:I = 0x0

.field private static final REFRESH_ALBUMART:I = 0x1

.field private static final REFRESH_DMCPREP:I = 0x9

.field private static final REFRESH_DMR:I = 0x8

.field private static final REFRESH_INFO:I = 0x0

.field private static final REFRESH_LISTINDEX:I = 0x2

.field private static final REFRESH_PLAYSTATE:I = 0x4

.field private static final REFRESH_RSTATE:I = 0x5

.field private static final REFRESH_SSTATE:I = 0x6

.field private static final REFRESH_TIME:I = 0x3

.field private static final REFRESH_VOLUME:I = 0x7

.field protected static final STATE_TIMEOUT_GALLERY:J = 0x88b8L

.field protected static final STATE_TIMEOUT_MSG:J = 0xfa0L

.field protected static final STATE_TIMEOUT_MUSIC:J = 0x61a8L

.field private static final TAG:Ljava/lang/String; = "[DMCServiceManager]"

.field private static final UI_ALPHA_DISABLE:I = 0x5f

.field private static final UI_ALPHA_ENABLE:I = 0xff

.field private static final VOLBLOCK_TIMEOUT:I = 0xfa

.field private static final VOLUI_TIMEOUT:I = 0xbb8

.field protected static final VOL_LEVEL_COUNT:I = 0x32

.field private static mContext:Landroid/app/Activity;

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field private mAdditionalMessage:Landroid/widget/TextView;

.field private mBtnNextListener:Landroid/view/View$OnClickListener;

.field private mBtnPPListener:Landroid/view/View$OnClickListener;

.field private mBtnPowerListener:Landroid/view/View$OnClickListener;

.field private mBtnPrevListener:Landroid/view/View$OnClickListener;

.field private mBtnVolDownListener:Landroid/view/View$OnClickListener;

.field private mBtnVolListener:Landroid/view/View$OnClickListener;

.field private mBtnVolUpListener:Landroid/view/View$OnClickListener;

.field private mCallbackUnregistered:Z

.field private mCurContainerID:Ljava/lang/String;

.field private mCurContentID:Ljava/lang/String;

.field private mCurCookie:I

.field private mCurDMRID:Ljava/lang/String;

.field private mCurDMRName:Ljava/lang/String;

.field private mCurFCap:I

.field private mCurFilePath:Ljava/lang/String;

.field private mCurIndex:I

.field private mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

.field private mCurMode:I

.field private mCurPLDirection:I

.field private mCurPLEndIdx:J

.field private mCurPLStartIdx:J

.field private mCurPushList:[I

.field private mCurServerID:Ljava/lang/String;

.field private mCurSlideDur:I

.field private mCurSource:I

.field private mCurThumbHQ:Z

.field private mDMCActionListener:Landroid/content/BroadcastReceiver;

.field private mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

.field private mDMCPref:Landroid/content/SharedPreferences;

.field private mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

.field private final mHandler:Landroid/os/Handler;

.field private mIsBtnPPEnable:Z

.field private mIsNewIntented:Z

.field private mIsNewLaunch:Z

.field private mIsRequestDetails:Z

.field private mIsResetPlaylist:Z

.field private mLargeStreamIcon:Landroid/widget/ImageView;

.field private mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

.field private mOncePlayed:Z

.field private mOrientation:I

.field private mPosTimer:Ljava/util/Timer;

.field private mSC:Landroid/content/ServiceConnection;

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mServiceUnbinded:Z

.field public mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

.field private mSwitchTimer:Ljava/util/Timer;

.field private mVolListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mVolSetBlocked:Z

.field private mVolumeDialog:Landroid/app/Dialog;

.field private mVolumeIcon:Landroid/widget/ImageView;

.field private mVolumeLevel:Landroid/widget/SeekBar;

.field private mVolumeMessage:Landroid/widget/TextView;

.field private mVolumeView:Landroid/view/View;

.field mbNP:Z

.field private mszAppTitle:Ljava/lang/String;

.field private mszListIndex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/htc/music/DMCServiceManager;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 102
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/htc/music/DMCServiceManager;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/htc/music/DMCServiceManager;->sFormatter:Ljava/util/Formatter;

    .line 104
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/htc/music/DMCServiceManager;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/ServiceConnection;I)V
    .locals 7
    .parameter "context"
    .parameter "osc"
    .parameter "nSource"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v1, Lcom/htc/music/DMCServiceManager$1;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$1;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCActionListener:Landroid/content/BroadcastReceiver;

    .line 666
    new-instance v1, Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    invoke-direct {v1, p0, v2}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;-><init>(Lcom/htc/music/DMCServiceManager;Lcom/htc/music/DMCServiceManager$1;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    .line 667
    new-instance v1, Lcom/htc/music/DMCServiceManager$DMCStatus;

    invoke-direct {v1, p0, v2}, Lcom/htc/music/DMCServiceManager$DMCStatus;-><init>(Lcom/htc/music/DMCServiceManager;Lcom/htc/music/DMCServiceManager$1;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    .line 669
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 719
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mServiceUnbinded:Z

    .line 720
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z

    .line 723
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mIsNewIntented:Z

    .line 725
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    .line 727
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;

    .line 729
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    .line 730
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    .line 731
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    .line 734
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mCurThumbHQ:Z

    .line 737
    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    .line 738
    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    .line 742
    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    .line 743
    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurFCap:I

    .line 744
    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurSlideDur:I

    .line 746
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    .line 747
    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurIndex:I

    .line 752
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurPushList:[I

    .line 754
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    .line 755
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    .line 756
    iput-wide v5, p0, Lcom/htc/music/DMCServiceManager;->mCurPLStartIdx:J

    .line 757
    iput-wide v5, p0, Lcom/htc/music/DMCServiceManager;->mCurPLEndIdx:J

    .line 758
    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurPLDirection:I

    .line 760
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mIsNewLaunch:Z

    .line 761
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mOncePlayed:Z

    .line 765
    iput-boolean v3, p0, Lcom/htc/music/DMCServiceManager;->mIsBtnPPEnable:Z

    .line 768
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mszAppTitle:Ljava/lang/String;

    .line 770
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mszListIndex:Ljava/lang/String;

    .line 772
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 786
    new-instance v1, Lcom/htc/music/DMCServiceManager$2;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$2;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    .line 1310
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mSC:Landroid/content/ServiceConnection;

    .line 1795
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mIsRequestDetails:Z

    .line 1827
    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    .line 2068
    new-instance v1, Lcom/htc/music/DMCServiceManager$3;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$3;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    .line 2355
    new-instance v1, Lcom/htc/music/DMCServiceManager$4;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$4;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnPrevListener:Landroid/view/View$OnClickListener;

    .line 2378
    new-instance v1, Lcom/htc/music/DMCServiceManager$5;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$5;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnPPListener:Landroid/view/View$OnClickListener;

    .line 2384
    new-instance v1, Lcom/htc/music/DMCServiceManager$6;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$6;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnNextListener:Landroid/view/View$OnClickListener;

    .line 2409
    new-instance v1, Lcom/htc/music/DMCServiceManager$7;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$7;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnPowerListener:Landroid/view/View$OnClickListener;

    .line 2418
    new-instance v1, Lcom/htc/music/DMCServiceManager$8;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$8;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolListener:Landroid/view/View$OnClickListener;

    .line 2440
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mbNP:Z

    .line 2519
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mIsResetPlaylist:Z

    .line 2723
    new-instance v1, Lcom/htc/music/DMCServiceManager$9;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$9;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolDownListener:Landroid/view/View$OnClickListener;

    .line 2729
    new-instance v1, Lcom/htc/music/DMCServiceManager$10;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$10;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolUpListener:Landroid/view/View$OnClickListener;

    .line 2909
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mVolSetBlocked:Z

    .line 3018
    new-instance v1, Lcom/htc/music/DMCServiceManager$13;

    invoke-direct {v1, p0}, Lcom/htc/music/DMCServiceManager$13;-><init>(Lcom/htc/music/DMCServiceManager;)V

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager;->mVolListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1312
    const-string v1, "[DMCServiceManager]"

    const-string v2, "DMCServiceManager constructor"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    .line 1317
    :goto_0
    sput-object p1, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    .line 1318
    iput-object p2, p0, Lcom/htc/music/DMCServiceManager;->mSC:Landroid/content/ServiceConnection;

    .line 1320
    sget-object v1, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/htc/music/DMCServiceManager;->prepareVolumeUI(Landroid/content/Context;)V

    .line 1321
    const-string v1, "[DMCServiceManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCurSource = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    iget-boolean v1, p0, Lcom/htc/music/DMCServiceManager;->mIsNewIntented:Z

    if-nez v1, :cond_2

    .line 1324
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->InitData()V

    .line 1329
    :goto_1
    const/4 v0, 0x0

    .line 1330
    .local v0, bBindRes:Z
    sget-object v1, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1331
    sget-object v1, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mSC:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 1333
    const-string v1, "[DMCServiceManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MLService Bind result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mServiceUnbinded:Z

    .line 1336
    if-nez v0, :cond_0

    .line 1337
    const-string v1, "[DMCServiceManager]"

    const-string v2, "service binding fail"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :cond_0
    return-void

    .line 1315
    .end local v0           #bBindRes:Z
    :cond_1
    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    goto :goto_0

    .line 1326
    :cond_2
    iput-boolean v4, p0, Lcom/htc/music/DMCServiceManager;->mIsNewIntented:Z

    goto :goto_1
.end method

.method private ClearPref()Z
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method private DMCDoPP(Z)V
    .locals 4
    .parameter "bForcePlay"

    .prologue
    .line 2002
    const-string v1, "[DMCServiceManager]"

    const-string v2, "DMC Music Do playpause()"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    #calls: Lcom/htc/music/DMCServiceManager$DMCStatus;->isPlaying()Z
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager$DMCStatus;->access$2700(Lcom/htc/music/DMCServiceManager$DMCStatus;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2005
    :cond_0
    const-string v1, "[DMCServiceManager]"

    const-string v2, "do play..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->play(ILjava/lang/String;)V

    .line 2008
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/DMCServiceManager$DMCStatus;->setUserState(I)V

    .line 2022
    :cond_1
    :goto_0
    return-void

    .line 2010
    :cond_2
    const-string v1, "[DMCServiceManager]"

    const-string v2, "do pause..."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->pause(ILjava/lang/String;)V

    .line 2013
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/music/DMCServiceManager$DMCStatus;->setUserState(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2015
    :catch_0
    move-exception v0

    .line 2016
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2017
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2018
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2020
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private DMCPreparePlaying()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1831
    new-instance v2, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v2}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    .line 1832
    .local v2, mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mszAppTitle:Ljava/lang/String;

    iput-object v7, v2, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 1833
    iget v7, p0, Lcom/htc/music/DMCServiceManager;->mCurFCap:I

    iput v7, v2, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 1835
    iget v7, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    if-nez v7, :cond_5

    .line 1836
    iget v7, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    if-ne v7, v10, :cond_4

    .line 1838
    const-string v7, "com.htc.album.action.LAUNCH_DMC_PHOTO"

    iput-object v7, v2, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 1851
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v8, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-interface {v7, v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->getControllingRendererID(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    .line 1853
    const/4 v4, 0x0

    .line 1854
    .local v4, nCreateRes:I
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v8, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v9, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v7, v8, v9, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->createMediaController(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)I

    move-result v4

    .line 1855
    if-eqz v4, :cond_8

    .line 1856
    const-string v7, "[DMCServiceManager]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createMediaController OK, cookie:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v8, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-interface {v7, v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererList(I)V

    .line 1863
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v8, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v9, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v0

    .line 1865
    .local v0, dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    if-eqz v0, :cond_0

    .line 1866
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v8, v0, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    iput v8, v7, Lcom/htc/music/DMCServiceManager$DMCStatus;->nRepeatState:I

    .line 1867
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-boolean v8, v0, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    iput-boolean v8, v7, Lcom/htc/music/DMCServiceManager$DMCStatus;->bShuffleState:Z

    .line 1868
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshRS(I)V

    .line 1869
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshRS(I)V

    .line 1872
    :cond_0
    if-ne v4, v5, :cond_1

    .line 1873
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/music/DMCServiceManager;->mIsNewLaunch:Z

    .line 1876
    :cond_1
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v8, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v9, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCVolumeControlSupport(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1878
    const-string v7, "[DMCServiceManager]"

    const-string v8, "DMR doesn\'t support Volume Control..."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    :cond_2
    :goto_1
    iget-boolean v7, p0, Lcom/htc/music/DMCServiceManager;->mIsNewLaunch:Z

    if-nez v7, :cond_3

    .line 1893
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v8, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v9, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v10, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistTotalCount(ILjava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCount:J

    .line 1895
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v8, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v9, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v10, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistPlayIndex(ILjava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCurrentIndex:J

    .line 1898
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v8, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v9, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCControlItemInfo(ILjava/lang/String;)V

    .line 1899
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v8, 0x0

    #calls: Lcom/htc/music/DMCServiceManager$DMCStatus;->setPosUI(I)V
    invoke-static {v7, v8}, Lcom/htc/music/DMCServiceManager$DMCStatus;->access$2600(Lcom/htc/music/DMCServiceManager$DMCStatus;I)V

    .line 1902
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1903
    .local v3, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0xa

    invoke-virtual {v7, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1988
    .end local v3           #msg:Landroid/os/Message;
    :cond_3
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/htc/music/DMCServiceManager;->UIRefreshPlayState(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1998
    .end local v0           #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    .end local v4           #nCreateRes:I
    :goto_2
    return v5

    .line 1842
    :cond_4
    const-string v7, "com.htc.album.action.LAUNCH_DMC_VIDEO"

    iput-object v7, v2, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    goto/16 :goto_0

    .line 1846
    :cond_5
    const-string v7, "com.htc.music.PLAYBACK_VIEWER"

    iput-object v7, v2, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    goto/16 :goto_0

    .line 1883
    .restart local v0       #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    .restart local v4       #nCreateRes:I
    :cond_6
    :try_start_1
    const-string v7, "[DMCServiceManager]"

    const-string v8, "DMR support Volume Control..."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    iget v7, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    if-eq v7, v10, :cond_2

    .line 1885
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    invoke-virtual {v7}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshVolume()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1989
    .end local v0           #dcs:Lcom/htc/dlnainterface/DLNAControllerStatus;
    .end local v4           #nCreateRes:I
    :catch_0
    move-exception v1

    .line 1990
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1991
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_7
    move v5, v6

    .line 1992
    goto :goto_2

    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v4       #nCreateRes:I
    :cond_8
    move v5, v6

    .line 1889
    goto :goto_2

    .line 1993
    .end local v4           #nCreateRes:I
    :catch_1
    move-exception v1

    .line 1995
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move v5, v6

    .line 1996
    goto :goto_2
.end method

.method private GetPref()Z
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1739
    sget-object v3, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMR"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1743
    .local v0, Pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 1772
    :goto_0
    return v1

    .line 1745
    :cond_1
    const-string v3, "DMR"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    .line 1746
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "DMCPref"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1747
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurServerID"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    .line 1748
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurContainerID"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    .line 1749
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurContentID"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    .line 1750
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurFilePath"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    .line 1752
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurPLStartIdx"

    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/music/DMCServiceManager;->mCurPLStartIdx:J

    .line 1753
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurPLEndIdx"

    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/music/DMCServiceManager;->mCurPLEndIdx:J

    .line 1754
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v4, "CurPLDirection"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/music/DMCServiceManager;->mCurPLDirection:I

    .line 1757
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    const-string v5, "CurVol"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1772
    goto :goto_0
.end method

.method private InitData()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1350
    sget-object v2, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    sget-object v2, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/htc/music/DMCServiceManager;->getPrefFile(I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    .line 1351
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->GetPref()Z

    .line 1355
    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    .line 1356
    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    .line 1358
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1359
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    .line 1364
    :goto_0
    iget v2, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    if-nez v2, :cond_2

    .line 1365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1366
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushList_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/music/DMCServiceManager;->unserializeBundle(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1368
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1369
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurPushList:[I

    .line 1370
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1371
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mCurPushList:[I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v3, v1

    .line 1370
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1361
    .end local v0           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1           #i:I
    :cond_1
    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    goto :goto_0

    .line 1374
    :cond_2
    const-string v2, "[DMCServiceManager]"

    const-string v3, "Values form Pref:::"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    iget v2, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    if-nez v2, :cond_5

    .line 1378
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 1379
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/htc/music/DMCServiceManager;->mCurIndex:I

    .line 1383
    :goto_2
    const-string v2, "[DMCServiceManager]"

    const-string v3, "LOCAL SRC -- DMC in \'Local Push\' Mode"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    :goto_3
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--Mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--dmr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--svr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--container:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--content:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--FilePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--Shuffle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserShuffleState:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    const-string v2, "[DMCServiceManager]"

    const-string v3, "--For PL"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--  Start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/music/DMCServiceManager;->mCurPLStartIdx:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--  End:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/music/DMCServiceManager;->mCurPLEndIdx:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--  Dir:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurPLDirection:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurPushList:[I

    if-eqz v2, :cond_3

    .line 1402
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- (LOCAL Only!) PushList len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurPushList:[I

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    :cond_3
    const-string v2, "[DMCServiceManager]"

    const-string v3, "--For Status"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--  Vol:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--  Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-wide v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->lPosition:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--  Dur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-wide v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->lDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->SavePref()Z

    .line 1419
    return-void

    .line 1381
    :cond_4
    iput v4, p0, Lcom/htc/music/DMCServiceManager;->mCurIndex:I

    goto/16 :goto_2

    .line 1385
    :cond_5
    const-string v2, "[DMCServiceManager]"

    const-string v3, "REMOTE SRC -- DMC in \'Remote Ctrl\' Mode"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private SavePref()Z
    .locals 4

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1700
    :cond_1
    const-string v0, "[DMCServiceManager]"

    const-string v1, "contentID should never be null, save pref aborted!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    const/4 v0, 0x0

    .line 1704
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DMCPref"

    const-string v2, "Saved"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurServerID"

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurContainerID"

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurContentID"

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurFilePath"

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurPLStartIdx"

    iget-wide v2, p0, Lcom/htc/music/DMCServiceManager;->mCurPLStartIdx:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurPLEndIdx"

    iget-wide v2, p0, Lcom/htc/music/DMCServiceManager;->mCurPLEndIdx:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurPLDirection"

    iget v2, p0, Lcom/htc/music/DMCServiceManager;->mCurPLDirection:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurVol"

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v2, v2, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_0
.end method

.method private TuneVolume(II)V
    .locals 8
    .parameter "nDeltaV"
    .parameter "nBound"

    .prologue
    .line 2676
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    .line 2677
    .local v2, volToastView:Landroid/view/View;
    if-eqz v2, :cond_5

    .line 2679
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2680
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    iput v4, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    .line 2688
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v1, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    .line 2689
    .local v1, nVol:I
    if-gez p1, :cond_1

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v3, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    if-le v3, p2, :cond_2

    :cond_1
    if-lez p1, :cond_6

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v3, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    sub-int v4, p2, p1

    if-lt v3, v4, :cond_6

    .line 2691
    :cond_2
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iput p2, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    .line 2693
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mVolumeLevel:Landroid/widget/SeekBar;

    invoke-virtual {v3, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2694
    if-gez p1, :cond_3

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "ic_volume_off"

    const-string v6, "drawable"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2696
    :cond_3
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v5, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v3, v4, v5, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2718
    .end local v1           #nVol:I
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 2719
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->resetVolUITimeout()V

    .line 2720
    return-void

    .line 2684
    :cond_5
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    iput v4, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    goto :goto_0

    .line 2698
    .restart local v1       #nVol:I
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    add-int/2addr v4, p1

    iput v4, v3, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    .line 2700
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mVolumeLevel:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v4, v4, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2701
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "ic_volume"

    const-string v6, "drawable"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2703
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v5, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v6, v6, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserVolume:I

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2706
    .end local v1           #nVol:I
    :catch_0
    move-exception v0

    .line 2707
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2708
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 2709
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2711
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/DMCServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->SavePref()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/music/DMCServiceManager;->mOncePlayed:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/music/DMCServiceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/music/DMCServiceManager;->mOncePlayed:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/music/DMCServiceManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/music/DMCServiceManager;->setDMCLine(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/music/DMCServiceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/music/DMCServiceManager;->mCurThumbHQ:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/music/DMCServiceManager;->mIsRequestDetails:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/htc/music/DMCServiceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/music/DMCServiceManager;->mIsRequestDetails:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/htc/music/DMCServiceManager;Lcom/htc/dlnainterface/DLNAContentItemDetails;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/music/DMCServiceManager;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/music/DMCServiceManager;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->DMCPreparePlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/music/DMCServiceManager;->mszListIndex:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/music/DMCServiceManager;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/music/DMCServiceManager;->mVolSetBlocked:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/htc/music/DMCServiceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/music/DMCServiceManager;->mVolSetBlocked:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/htc/music/DMCServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/music/DMCServiceManager;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/htc/music/DMCServiceManager;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/htc/music/DMCServiceManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/music/DMCServiceManager;->DMCDoPP(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/music/DMCServiceManager;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/htc/music/DMCServiceManager;->TuneVolume(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/DMCServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurSource:I

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/music/DMCServiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->resetVolUITimeout()V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/music/DMCServiceManager;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolUpListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/music/DMCServiceManager;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolDownListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/music/DMCServiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->resetVolBlock()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/music/DMCServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/DMCServiceManager;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/htc/music/DMCServiceManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/htc/music/DMCServiceManager;->mCurIndex:I

    return p1
.end method

.method private getPrefFile(I)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "nMode"

    .prologue
    .line 1683
    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    packed-switch v0, :pswitch_data_0

    .line 1691
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1685
    :pswitch_0
    sget-object v0, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const-string v1, "DMCPref_Video"

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 1687
    :pswitch_1
    sget-object v0, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const-string v1, "DMCPref_Music"

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 1689
    :pswitch_2
    sget-object v0, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const-string v1, "DMCPref_Photo"

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 1683
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isServiceHealthy()Z
    .locals 2

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 1576
    const-string v0, "[DMCServiceManager]"

    const-string v1, "DLNAService down!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    const/4 v0, 0x0

    .line 1579
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWifiEnabled()Z
    .locals 5

    .prologue
    .line 1776
    const/4 v0, 0x0

    .line 1778
    .local v0, retval:Z
    sget-object v3, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1779
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 1781
    .local v2, wifiState:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1782
    const/4 v0, 0x1

    .line 1784
    :cond_0
    return v0
.end method

.method public static makeTimeString(Landroid/content/Context;JZI)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "secs"
    .parameter "bHaveHour"
    .parameter "nCurMode"

    .prologue
    const-wide/16 v8, 0xe10

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 127
    sget-object v2, Lcom/htc/music/DMCServiceManager;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 128
    const/4 p3, 0x1

    .line 130
    sget-object v1, Lcom/htc/music/DMCServiceManager;->sTimeArgs:[Ljava/lang/Object;

    .line 131
    .local v1, timeArgs:[Ljava/lang/Object;
    div-long v2, p1, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 132
    div-long v2, p1, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    .line 133
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 134
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 135
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, durationformat:Ljava/lang/String;
    if-eqz p3, :cond_1

    cmp-long v2, p1, v8

    if-ltz v2, :cond_1

    .line 139
    const v2, 0x7f070006

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_0
    :goto_0
    sget-object v2, Lcom/htc/music/DMCServiceManager;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 142
    :cond_1
    if-ne p4, v7, :cond_0

    .line 143
    const v2, 0x7f070005

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 2
    .parameter "what"

    .prologue
    .line 3089
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3090
    .local v0, i:Landroid/content/Intent;
    sget-object v1, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3091
    return-void
.end method

.method private prepareVolumeUI(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 2923
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 2924
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "volume_adjust"

    const-string v9, "layout"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    .line 2928
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "expand_button"

    const-string v10, "id"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2929
    .local v0, expBtn:Landroid/view/View;
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "expand_button_divider"

    const-string v10, "id"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2930
    .local v1, expBtnDiv:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2931
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2933
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "volume_adjust_item"

    const-string v9, "layout"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2934
    .local v5, sliderView:Landroid/view/View;
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "slider_group"

    const-string v10, "id"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 2935
    .local v4, sliderLayout:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 2936
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2952
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "stream_icon"

    const-string v9, "id"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeIcon:Landroid/widget/ImageView;

    .line 2953
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "seekbar"

    const-string v9, "id"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeLevel:Landroid/widget/SeekBar;

    .line 2954
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeLevel:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/htc/music/DMCServiceManager;->mVolListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2955
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeLevel:Landroid/widget/SeekBar;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2956
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeLevel:Landroid/widget/SeekBar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2961
    new-instance v7, Landroid/app/Dialog;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "Theme_Panel_Volume"

    const-string v10, "style"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, p1, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    .line 2962
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    const-string v8, "Volume control"

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2963
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    iget-object v8, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2965
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeView:Landroid/view/View;

    new-instance v8, Lcom/htc/music/DMCServiceManager$11;

    invoke-direct {v8, p0}, Lcom/htc/music/DMCServiceManager$11;-><init>(Lcom/htc/music/DMCServiceManager;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2972
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    new-instance v8, Lcom/htc/music/DMCServiceManager$12;

    invoke-direct {v8, p0}, Lcom/htc/music/DMCServiceManager$12;-><init>(Lcom/htc/music/DMCServiceManager;)V

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2994
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 2995
    .local v6, window:Landroid/view/Window;
    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    .line 2996
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2997
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v12, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2998
    const/16 v7, 0x7d3

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2999
    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3000
    const/high16 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 3003
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeIcon:Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "ic_audio_vol"

    const-string v10, "drawable"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3016
    :cond_3
    return-void
.end method

.method private resetVolBlock()V
    .locals 4

    .prologue
    const/16 v2, 0xca

    .line 2915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/DMCServiceManager;->mVolSetBlocked:Z

    .line 2916
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2917
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2918
    return-void
.end method

.method private resetVolUITimeout()V
    .locals 4

    .prologue
    const/16 v2, 0xc9

    .line 2911
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2912
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2913
    return-void
.end method

.method private serializeBundle(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2863
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    if-nez p2, :cond_1

    .line 2882
    :cond_0
    :goto_0
    return-void

    .line 2866
    :cond_1
    const/4 v2, 0x0

    .line 2868
    .local v2, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v3, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    sget-object v4, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2869
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2870
    .local v1, objOutStream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2876
    if-eqz v2, :cond_0

    .line 2878
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 2879
    .end local v1           #objOutStream:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 2871
    :catch_1
    move-exception v0

    .line 2876
    .local v0, e:Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_0

    .line 2878
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 2873
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 2876
    .local v0, e:Ljava/io/IOException;
    if-eqz v2, :cond_0

    .line 2878
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2876
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 2878
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2876
    :cond_2
    :goto_1
    throw v3

    .line 2879
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method private setDMCLine(I)V
    .locals 5
    .parameter "nForce"

    .prologue
    .line 2029
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDMCLine nForce:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 2032
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2066
    :cond_0
    :goto_0
    return-void

    .line 2041
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 2043
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    invoke-virtual {v2}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->loadInfo()V

    .line 2044
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    invoke-virtual {v2}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->refreshInfo()V

    .line 2047
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    invoke-virtual {v2}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshTime()V

    .line 2049
    const/4 v1, 0x0

    .line 2050
    .local v1, szLastDMRName:Ljava/lang/String;
    sget-object v2, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMR"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    sget-object v4, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2051
    .local v0, dmrpref:Landroid/content/SharedPreferences;
    const-string v2, "LastDMRName"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2054
    iget v2, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    if-nez v2, :cond_2

    .line 2064
    :cond_2
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v2}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    goto :goto_0
.end method

.method private unserializeBundle(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2885
    const/4 v2, 0x0

    .line 2887
    .local v2, inStream:Ljava/io/FileInputStream;
    :try_start_0
    sget-object v5, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v5, p1}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 2888
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2889
    .local v3, objInStream:Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2899
    .local v0, alObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    if-eqz v2, :cond_0

    .line 2901
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 2897
    .end local v0           #alObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    .end local v3           #objInStream:Ljava/io/ObjectInputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 2891
    :catch_0
    move-exception v1

    .line 2899
    .local v1, e:Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_1

    .line 2901
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    move-object v0, v4

    .line 2892
    goto :goto_0

    .line 2893
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 2899
    .local v1, e:Ljava/io/IOException;
    if-eqz v2, :cond_2

    .line 2901
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    :goto_2
    move-object v0, v4

    .line 2894
    goto :goto_0

    .line 2895
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 2896
    .local v1, e:Ljava/lang/ClassNotFoundException;
    :try_start_4
    const-string v5, "[DMCServiceManager]"

    const-string v6, "can not unserialize arraylist"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2899
    if-eqz v2, :cond_3

    .line 2901
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_3
    :goto_3
    move-object v0, v4

    .line 2897
    goto :goto_0

    .line 2899
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_4

    .line 2901
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 2899
    :cond_4
    :goto_4
    throw v4

    .line 2902
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    goto :goto_1

    .local v1, e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    goto :goto_2

    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v5

    goto :goto_4

    .local v1, e:Ljava/lang/ClassNotFoundException;
    :catch_6
    move-exception v5

    goto :goto_3

    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    .restart local v0       #alObj:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    .restart local v3       #objInStream:Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method protected DMRPowerOff(I)V
    .locals 9
    .parameter "nOccured"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    .line 2527
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V

    .line 2528
    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2537
    :cond_0
    :goto_0
    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    packed-switch v4, :pswitch_data_0

    .line 2659
    :goto_1
    sget-object v4, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DMR"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v4, v5, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2661
    .local v2, prefDMR:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_1

    .line 2662
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "DMR"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2664
    :cond_1
    sget-object v4, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v8}, Lcom/htc/music/DMCServiceManager;->getPrefFile(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2665
    .local v0, Pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_2

    .line 2666
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "DMCPref"

    const-string v6, "NeedClear"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2668
    :cond_2
    return-void

    .line 2529
    .end local v0           #Pref:Landroid/content/SharedPreferences;
    .end local v2           #prefDMR:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 2530
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2531
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2532
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 2534
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2610
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2611
    .local v3, rtt:Landroid/content/Intent;
    const-string v4, "com.htc.music.PLAYBACK_VIEWER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2619
    const-string v4, "[DMCServiceManager]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Goto Music, passing ContentID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 2621
    const-string v4, "Server"

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2622
    const-string v4, "container"

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2623
    const-string v4, "content"

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2631
    :goto_2
    const-string v4, "startIdx"

    iget-wide v6, p0, Lcom/htc/music/DMCServiceManager;->mCurPLStartIdx:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2632
    const-string v4, "endIdx"

    iget-wide v6, p0, Lcom/htc/music/DMCServiceManager;->mCurPLEndIdx:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2633
    const-string v4, "direction"

    iget v6, p0, Lcom/htc/music/DMCServiceManager;->mCurPLDirection:I

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2635
    const-string v4, "filepath"

    iget-object v6, p0, Lcom/htc/music/DMCServiceManager;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2637
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2639
    const-string v4, "Render"

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2640
    const-string v4, "SaveRender"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2649
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 2625
    :cond_3
    const-string v6, "Server"

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2627
    const-string v6, "container"

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2628
    const-string v4, "content"

    const-string v6, "0"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 2537
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public HandleOnServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter "classname"
    .parameter "obj"

    .prologue
    const/4 v4, 0x1

    .line 1602
    iget-boolean v3, p0, Lcom/htc/music/DMCServiceManager;->mServiceUnbinded:Z

    if-ne v3, v4, :cond_1

    .line 1603
    const-string v3, "[DMCServiceManager]"

    const-string v4, "return, since service should already unbinded"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    :cond_0
    :goto_0
    return-void

    .line 1607
    :cond_1
    invoke-static {p2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 1610
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v3, :cond_2

    .line 1611
    const-string v3, "[DMCServiceManager]"

    const-string v4, "MiddleLayer Service null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1616
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v5, p0, Lcom/htc/music/DMCServiceManager;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 1617
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z

    .line 1620
    sget-object v3, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const-string v4, "com.htc.dmc_preferences"

    sget-object v5, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1622
    .local v2, prefSetting:Landroid/content/SharedPreferences;
    const-string v3, "dmc_timeout_setting"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1625
    .local v0, CurTimeout:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    const-string v5, "JPEG_SM,JPEG_TN,PNG_TN"

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCThumbSize(ILjava/lang/String;)Z

    .line 1627
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 1628
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->setControllingTimeout(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1652
    .end local v0           #CurTimeout:Ljava/lang/String;
    .end local v2           #prefSetting:Landroid/content/SharedPreferences;
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshRS(I)V

    .line 1653
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshRS(I)V

    .line 1655
    iget v3, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    .line 1663
    iget-boolean v3, p0, Lcom/htc/music/DMCServiceManager;->mIsResetPlaylist:Z

    if-eqz v3, :cond_4

    .line 1666
    :try_start_1
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v5, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/music/DMCServiceManager;->mCurPushList:[I

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->reArrangePushPlaylist(ILjava/lang/String;I[I)Z

    .line 1667
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/DMCServiceManager;->mIsResetPlaylist:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1673
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->DMCPreparePlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1674
    const-string v3, "[DMCServiceManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HandleOnServiceConnected mIsNewLaunch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/music/DMCServiceManager;->mIsNewLaunch:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1630
    .restart local v0       #CurTimeout:Ljava/lang/String;
    .restart local v2       #prefSetting:Landroid/content/SharedPreferences;
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const-wide/32 v4, 0x927c0

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->setControllingTimeout(J)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1643
    .end local v0           #CurTimeout:Ljava/lang/String;
    .end local v2           #prefSetting:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 1644
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1645
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 1646
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1648
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1668
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 1669
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public StopTimers()V
    .locals 2

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    .line 1425
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager;->mSwitchTimer:Ljava/util/Timer;

    .line 1426
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, v1, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateTimer:Ljava/util/Timer;

    .line 1427
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, v1, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->StateMsgTimer:Ljava/util/Timer;

    .line 1428
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget-object v1, v1, Lcom/htc/music/DMCServiceManager$DMCStatus;->PgTimer:Ljava/util/Timer;

    invoke-virtual {p0, v1}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->PgTimer:Ljava/util/Timer;

    .line 1429
    return-void
.end method

.method public TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 3
    .parameter "timer"

    .prologue
    .line 2307
    if-eqz p1, :cond_0

    .line 2308
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 2309
    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    .line 2310
    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer Disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    const/4 p1, 0x0

    .line 2314
    :goto_0
    return-object p1

    .line 2313
    :cond_0
    const-string v0, "[DMCServiceManager]"

    const-string v1, "Timer already disabled..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;
    .locals 3
    .parameter "timer"
    .parameter "timertask"
    .parameter "delay"
    .parameter "period"

    .prologue
    .line 2319
    if-nez p1, :cond_1

    .line 2320
    new-instance p1, Ljava/util/Timer;

    .end local p1
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 2321
    .restart local p1
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_0

    .line 2322
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2325
    :goto_0
    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer Enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2329
    :goto_1
    return-object p1

    .line 2324
    :cond_0
    invoke-virtual/range {p1 .. p6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 2327
    :cond_1
    const-string v0, "[DMCServiceManager]"

    const-string v1, "Timer already enabled..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected UIRefreshPlayState(Z)V
    .locals 13
    .parameter "bReload"

    .prologue
    const-wide/16 v5, 0x1f4

    const-wide/16 v3, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 2743
    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    if-ne v0, v11, :cond_2

    .line 2744
    const/4 v8, 0x1

    .line 2746
    .local v8, nSSState:I
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCPhotoSlideshowState(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 2756
    :cond_0
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 2860
    .end local v8           #nSSState:I
    :cond_1
    :goto_1
    :sswitch_0
    return-void

    .line 2748
    .restart local v8       #nSSState:I
    :catch_0
    move-exception v7

    .line 2749
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2750
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 2751
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 2753
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2758
    .end local v7           #e:Landroid/os/RemoteException;
    :pswitch_0
    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    if-eq v0, v11, :cond_1

    .line 2759
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/music/DMCServiceManager$PosTimerTask;

    invoke-direct {v2, p0, v12}, Lcom/htc/music/DMCServiceManager$PosTimerTask;-><init>(Lcom/htc/music/DMCServiceManager;Lcom/htc/music/DMCServiceManager$1;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/DMCServiceManager;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    goto :goto_1

    .line 2770
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    goto :goto_1

    .line 2784
    .end local v8           #nSSState:I
    :cond_2
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-ne p1, v10, :cond_7

    .line 2787
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v9

    .line 2788
    .local v9, status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    if-eqz v9, :cond_9

    .line 2789
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v1, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    .line 2790
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-nez v0, :cond_4

    .line 2791
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    .line 2792
    :cond_4
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-ne v0, v10, :cond_5

    .line 2793
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    .line 2794
    :cond_5
    iget v0, v9, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-ne v0, v11, :cond_6

    .line 2795
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    .line 2796
    :cond_6
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/DMCServiceManager$DMCStatus;->bStateSynced:Z
    invoke-static {v0, v1}, Lcom/htc/music/DMCServiceManager$DMCStatus;->access$3902(Lcom/htc/music/DMCServiceManager$DMCStatus;Z)Z

    .line 2798
    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- init nPlaystate, get current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v2, v2, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2814
    .end local v9           #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    #getter for: Lcom/htc/music/DMCServiceManager$DMCStatus;->bStateSynced:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager$DMCStatus;->access$3900(Lcom/htc/music/DMCServiceManager$DMCStatus;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    :goto_3
    sparse-switch v0, :sswitch_data_0

    .line 2841
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_1

    .line 2854
    :sswitch_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iput v10, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    goto/16 :goto_1

    .line 2802
    .restart local v9       #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 2805
    .end local v9           #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :catch_2
    move-exception v7

    .line 2806
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2807
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 2808
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v7

    .line 2810
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 2814
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_a
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    goto :goto_3

    .line 2817
    :sswitch_2
    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    if-eq v0, v11, :cond_8

    .line 2818
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    new-instance v2, Lcom/htc/music/DMCServiceManager$PosTimerTask;

    invoke-direct {v2, p0, v12}, Lcom/htc/music/DMCServiceManager$PosTimerTask;-><init>(Lcom/htc/music/DMCServiceManager;Lcom/htc/music/DMCServiceManager$1;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/DMCServiceManager;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    goto :goto_4

    .line 2830
    :sswitch_3
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    invoke-virtual {p0, v0}, Lcom/htc/music/DMCServiceManager;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/DMCServiceManager;->mPosTimer:Ljava/util/Timer;

    goto :goto_4

    .line 2756
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2814
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3e8 -> :sswitch_3
    .end sparse-switch

    .line 2841
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1491
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1505
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 1493
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1494
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolUpListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 1495
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolUpListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 1499
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1500
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolDownListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 1501
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mBtnVolDownListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 1491
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3118
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v0, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szArtist:Ljava/lang/String;

    return-object v0
.end method

.method protected getCurDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 7

    .prologue
    .line 1799
    const/4 v0, 0x0

    .line 1802
    .local v0, details:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1812
    :cond_0
    :goto_0
    return-object v0

    .line 1804
    :catch_0
    move-exception v1

    .line 1805
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1806
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1807
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1809
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDMCThumbBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "nWantSize"

    .prologue
    .line 3132
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v1, v1, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->getDLNAThumbBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3128
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v0, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3123
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    iget-object v0, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 3113
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    #calls: Lcom/htc/music/DMCServiceManager$DMCStatus;->isPlaying()Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager$DMCStatus;->access$2700(Lcom/htc/music/DMCServiceManager$DMCStatus;)Z

    move-result v0

    return v0
.end method

.method public makeDynInfoString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "szListIndex"
    .parameter "szStatus"

    .prologue
    .line 108
    if-nez p2, :cond_1

    .line 110
    if-eqz p1, :cond_0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/htc/music/DMCServiceManager;->mCurMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 112
    :cond_0
    iget-object p2, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    .line 118
    .end local p2
    :cond_1
    :goto_0
    return-object p2

    .line 115
    .restart local p2
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 3108
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mBtnNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 3109
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mBtnNextListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 3110
    :cond_0
    return-void
.end method

.method public playpause()V
    .locals 1

    .prologue
    .line 3099
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager;->DMCDoPP(Z)V

    .line 3100
    return-void
.end method

.method public prev()V
    .locals 2

    .prologue
    .line 3103
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mBtnPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 3104
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mBtnPrevListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 3105
    :cond_0
    return-void
.end method

.method public release()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1432
    const-string v2, "[DMCServiceManager]"

    const-string v3, "onStop"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    .line 1435
    const-string v2, "[DMCServiceManager]"

    const-string v3, "unregister service callbacks"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/music/DMCServiceManager;->mCurCookie:I

    iget-object v4, p0, Lcom/htc/music/DMCServiceManager;->mNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 1437
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1447
    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/htc/music/DMCServiceManager;->mIsNewLaunch:Z

    .line 1449
    invoke-virtual {p0}, Lcom/htc/music/DMCServiceManager;->StopTimers()V

    .line 1451
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iput-boolean v5, v2, Lcom/htc/music/DMCServiceManager$DMCStatus;->bCanToastR:Z

    .line 1452
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iput-boolean v5, v2, Lcom/htc/music/DMCServiceManager$DMCStatus;->bCanToastS:Z

    .line 1455
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->SavePref()Z

    .line 1458
    sget-object v2, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v6}, Lcom/htc/music/DMCServiceManager;->getPrefFile(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1459
    .local v0, Pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_2

    const-string v2, "DMCPref"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NeedClear"

    if-ne v2, v3, :cond_2

    .line 1460
    const-string v2, "[DMCServiceManager]"

    const-string v3, "--Do Clear Pref"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->ClearPref()Z

    .line 1465
    :goto_1
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mSC:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_3

    .line 1466
    sget-object v2, Lcom/htc/music/DMCServiceManager;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager;->mSC:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1467
    const-string v2, "[DMCServiceManager]"

    const-string v3, "ML Service unbind"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    :goto_2
    iput-object v7, p0, Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 1472
    iput-boolean v6, p0, Lcom/htc/music/DMCServiceManager;->mServiceUnbinded:Z

    .line 1474
    invoke-virtual {p0}, Lcom/htc/music/DMCServiceManager;->StopTimers()V

    .line 1476
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 1477
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1487
    :cond_1
    return-void

    .line 1439
    .end local v0           #Pref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 1440
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1441
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1442
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1444
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1463
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #Pref:Landroid/content/SharedPreferences;
    :cond_2
    const-string v2, "[DMCServiceManager]"

    const-string v3, "--Pref KEEP"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1469
    :cond_3
    const-string v2, "[DMCServiceManager]"

    const-string v3, "ML ServiceConnection null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setStateSync()V
    .locals 2

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nUserState:I

    if-nez v0, :cond_0

    .line 2344
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/DMCServiceManager$DMCStatus;->setUserState(I)V

    .line 2345
    :cond_0
    return-void
.end method
