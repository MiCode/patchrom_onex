.class public Lcom/htc/music/widget/MusicMaActivity;
.super Landroid/app/Activity;
.source "MusicMaActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;,
        Lcom/htc/music/widget/MusicMaActivity$ControllerListener;,
        Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;
    }
.end annotation


# static fields
.field private static final DELETION_TRACK_COMPLETED:I = 0x0

.field private static final MSG_SWITCH_MODE:I = 0x36b1

.field public static final START_NEW_ACTIVITY:I = -0x2

.field private static final TAG:Ljava/lang/String; = "[MusicMaActivity]"

.field protected static mEnableLandscapeHorizontalSDError:I


# instance fields
.field private activeDialog:I

.field private mActivityResumed:Z

.field private mControllerListener:Lcom/htc/music/widget/MusicMaActivity$ControllerListener;

.field private mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

.field private mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

.field private mDLNAServiceStatusListener:Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;

.field protected mEnableRightBtn:I

.field protected mEnableSearch:Z

.field private mHtcTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

.field private mIsDLNAManagerConnected:Z

.field protected mIsEnhancerExist:Z

.field private mNeedSetRendererAsDongle:Z

.field private mOrientation:I

.field protected mRes:Landroid/content/res/Resources;

.field private mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

.field private mbufferdialog:Landroid/app/ProgressDialog;

.field private messageHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, -0x1

    sput v0, Lcom/htc/music/widget/MusicMaActivity;->mEnableLandscapeHorizontalSDError:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mOrientation:I

    .line 53
    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    .line 62
    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 63
    new-instance v0, Lcom/htc/music/widget/MusicMaActivity$ControllerListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/widget/MusicMaActivity$ControllerListener;-><init>(Lcom/htc/music/widget/MusicMaActivity;Lcom/htc/music/widget/MusicMaActivity$1;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mControllerListener:Lcom/htc/music/widget/MusicMaActivity$ControllerListener;

    .line 64
    new-instance v0, Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;-><init>(Lcom/htc/music/widget/MusicMaActivity;Lcom/htc/music/widget/MusicMaActivity$1;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAServiceStatusListener:Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;

    .line 65
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsDLNAManagerConnected:Z

    .line 66
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mNeedSetRendererAsDongle:Z

    .line 67
    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 68
    new-instance v0, Lcom/htc/music/widget/MusicMaActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicMaActivity$1;-><init>(Lcom/htc/music/widget/MusicMaActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mHtcTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    .line 108
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mActivityResumed:Z

    .line 110
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    .line 513
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    .line 584
    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    .line 597
    new-instance v0, Lcom/htc/music/widget/MusicMaActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicMaActivity$2;-><init>(Lcom/htc/music/widget/MusicMaActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->messageHandler:Landroid/os/Handler;

    .line 819
    new-instance v0, Lcom/htc/music/widget/MusicMaActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicMaActivity$3;-><init>(Lcom/htc/music/widget/MusicMaActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/widget/MusicMaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;->closeDMC()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/music/widget/MusicMaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;->handleTVReadyToPlay()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/widget/MusicMaActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/widget/MusicMaActivity;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/widget/MusicMaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;->launchPlayer()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/music/widget/MusicMaActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/widget/MusicMaActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsDLNAManagerConnected:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/music/widget/MusicMaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mNeedSetRendererAsDongle:Z

    return v0
.end method

.method static synthetic access$902(Lcom/htc/music/widget/MusicMaActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/music/widget/MusicMaActivity;->mNeedSetRendererAsDongle:Z

    return p1
.end method

.method private closeDMC()V
    .locals 3

    .prologue
    .line 851
    const-string v1, "[MusicMaActivity]"

    const-string v2, "DMC power off"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 854
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 855
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 867
    :goto_0
    return-void

    .line 857
    :cond_0
    const-string v1, "[MusicMaActivity]"

    const-string v2, "Current mode is not dmc or push mode, cancel close dmc"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 860
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    const-string v1, "[MusicMaActivity]"

    const-string v2, "service is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleTVReadyToPlay()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 879
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v5, :cond_0

    .line 915
    :goto_0
    return-void

    .line 883
    :cond_0
    const/4 v1, 0x0

    .line 884
    .local v1, isDMCOrPush:Z
    const/4 v2, 0x0

    .line 886
    .local v2, isQueueEmpty:Z
    :try_start_0
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v1

    .line 887
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 888
    .local v4, queueLength:I
    if-gtz v4, :cond_1

    .line 889
    const/4 v2, 0x1

    .line 895
    .end local v4           #queueLength:I
    :cond_1
    :goto_1
    const-string v5, "[MusicMaActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleTVReadyToPlay, isDMCOrPush: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isQueueEmpty: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 898
    iget-boolean v5, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsDLNAManagerConnected:Z

    if-nez v5, :cond_2

    .line 899
    iput-boolean v9, p0, Lcom/htc/music/widget/MusicMaActivity;->mNeedSetRendererAsDongle:Z

    .line 900
    iget-object v5, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v6, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAServiceStatusListener:Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;

    invoke-virtual {v5, v6}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->connect(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z

    goto :goto_0

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 902
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    new-instance v3, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v3}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    .line 903
    .local v3, notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    iput v9, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 904
    const-string v5, "com.htc.music.PLAYBACK_VIEWER"

    iput-object v5, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 905
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701d1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 906
    const-string v5, "HtcMusic"

    iput-object v5, v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 908
    iget-object v5, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v5, v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    .line 910
    iput-boolean v8, p0, Lcom/htc/music/widget/MusicMaActivity;->mNeedSetRendererAsDongle:Z

    goto :goto_0

    .line 913
    .end local v3           #notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :cond_3
    iput-boolean v8, p0, Lcom/htc/music/widget/MusicMaActivity;->mNeedSetRendererAsDongle:Z

    goto :goto_0
.end method

.method private launchPlayer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 870
    const-string v1, "[MusicMaActivity]"

    const-string v2, "launchPlayer"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 872
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 873
    const-string v1, "showEmptyQueue"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 874
    const-string v1, "inner-transition"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 875
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicMaActivity;->startActivity(Landroid/content/Intent;)V

    .line 876
    return-void
.end method

.method private registerTVDisplayHelper()V
    .locals 3

    .prologue
    .line 736
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-nez v1, :cond_0

    .line 737
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mHtcTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    invoke-direct {v1, p0, v2}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;-><init>(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 743
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 744
    .local v0, fDLNA:Landroid/content/IntentFilter;
    const-string v1, "com.htc.dlnamiddlelayer.action.dmc_destroy_notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    const-string v1, "com.htc.music.triggerplayinlibrary"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/widget/MusicMaActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 747
    return-void

    .line 740
    .end local v0           #fDLNA:Landroid/content/IntentFilter;
    :cond_0
    const-string v1, "[MusicMaActivity]"

    const-string v2, "registerTVDisplayHelper, already register it, ignore this time."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseTVDisplayHelper()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->release()V

    .line 752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 759
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicMaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :goto_1
    return-void

    .line 755
    :cond_0
    const-string v0, "[MusicMaActivity]"

    const-string v1, "releaseTVDisplayHelper, mTVHelper is null, no need to release."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 760
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private setDLNAPreloadEnable(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 765
    const-string v1, "wireless_display"

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicMaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 766
    .local v0, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {v0, p1}, Lcom/htc/service/WirelessDisplayManager;->setDLNAPreloadEnable(Z)V

    .line 768
    :cond_0
    return-void
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "where"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 587
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v7

    .line 588
    .local v7, deleteContent:Landroid/app/Activity;
    if-nez v7, :cond_0

    move-object v7, p1

    check-cast v7, Landroid/app/Activity;

    .line 590
    :cond_0
    const-string v1, ""

    const v2, 0x7f0700b1

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicMaActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v7, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    .line 591
    new-instance v0, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;-><init>(Lcom/htc/music/widget/MusicMaActivity;Lcom/htc/music/widget/MusicMaActivity$1;)V

    .local v0, mDeleteAlbum:Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 592
    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->Init(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 594
    .local v8, deletethread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 595
    return-void
.end method

.method protected disableCategoryDropDown()V
    .locals 3

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 500
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 505
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 506
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0}, Lcom/htc/music/widget/IMusicTabActivityInterface;->disableCategoryDropDown()V

    goto :goto_0
.end method

.method public disableSearch()V
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    .line 517
    return-void
.end method

.method public dismissActiveDialog()V
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    .line 721
    iget v1, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    if-ne v1, v3, :cond_0

    .line 732
    :goto_0
    return-void

    .line 726
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicMaActivity;->dismissDialog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    iput v3, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    goto :goto_0

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "[MusicMaActivity]"

    const-string v2, "[dismissActiveDialog] ."

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    iput v3, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    goto :goto_0

    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    iput v3, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    throw v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 526
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    if-eqz v1, :cond_0

    .line 527
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 534
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    if-eqz v1, :cond_1

    .line 535
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 541
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :pswitch_0
    return v0

    .line 529
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->onSearchRequested()Z

    goto :goto_0

    .line 527
    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_1
    .end packed-switch

    .line 535
    :pswitch_data_1
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public enableSearch()V
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    .line 521
    return-void
.end method

.method public findRootParent()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 258
    .local v0, rootParent:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 266
    .end local p0
    :goto_0
    return-object p0

    .line 260
    .restart local p0
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 261
    .local v1, temp:Landroid/app/Activity;
    :goto_1
    if-eqz v1, :cond_1

    .line 262
    move-object v0, v1

    .line 263
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object p0, v0

    .line 266
    goto :goto_0
.end method

.method protected isActivityResumed()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mActivityResumed:Z

    return v0
.end method

.method public isByPass()Z
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 335
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 336
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 278
    .local v0, rootParent:Landroid/app/Activity;
    if-eq p0, v0, :cond_0

    .line 279
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 161
    const-string v0, "[MusicMaActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive onConfigurationChanged, orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 164
    iget v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->resetBackground()V

    .line 170
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mOrientation:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 132
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mOrientation:I

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    .line 137
    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    .line 139
    const/4 v1, -0x1

    sget v2, Lcom/htc/music/widget/MusicMaActivity;->mEnableLandscapeHorizontalSDError:I

    if-ne v1, v2, :cond_1

    .line 140
    const v1, 0x7f070247

    invoke-static {p0, v1}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v1

    sput v1, Lcom/htc/music/widget/MusicMaActivity;->mEnableLandscapeHorizontalSDError:I

    .line 143
    :cond_1
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-direct {v1, p0, v3, v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 144
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mControllerListener:Lcom/htc/music/widget/MusicMaActivity$ControllerListener;

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V

    .line 145
    return-void
.end method

.method public onDeletionCompleted()V
    .locals 2

    .prologue
    .line 637
    const-string v0, "[MusicMaActivity]"

    const-string v1, "call parent Empty onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 151
    return-void
.end method

.method public onMaBackPressed()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->closeOptionsMenu()V

    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 202
    iput-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mActivityResumed:Z

    .line 204
    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;->releaseTVDisplayHelper()V

    .line 205
    invoke-direct {p0, v0}, Lcom/htc/music/widget/MusicMaActivity;->setDLNAPreloadEnable(Z)V

    .line 206
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->disconnect()V

    .line 209
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 705
    iput p1, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    .line 706
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 707
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 175
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mActivityResumed:Z

    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 179
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 181
    .local v0, newConfig:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicMaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 184
    .end local v0           #newConfig:Landroid/content/res/Configuration;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->resetBackground()V

    .line 187
    const/4 v1, -0x1

    iget v3, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    if-ne v1, v3, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicMaActivity;->setCategoryRightBtn(Z)V

    .line 192
    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;->registerTVDisplayHelper()V

    .line 193
    invoke-direct {p0, v2}, Lcom/htc/music/widget/MusicMaActivity;->setDLNAPreloadEnable(Z)V

    .line 194
    return-void

    .line 187
    :cond_1
    iget v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    if-lez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 156
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->dismissActiveDialog()V

    .line 157
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 214
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    return-void
.end method

.method protected resetBackground()V
    .locals 5

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    const-string v2, "common_app_bkg"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, resId:I
    const-string v1, "common_app_bkg"

    invoke-static {p0, v1, v0}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 119
    if-lez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 124
    .end local v0           #resId:I
    :cond_0
    return-void
.end method

.method protected setCategoryLeftBtnVisible(Z)V
    .locals 3
    .parameter "setVisible"

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 485
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 490
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 491
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryLeftBtnVisible(Z)V

    goto :goto_0
.end method

.method protected setCategoryProgressVisible(Z)V
    .locals 3
    .parameter "setVisible"

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 384
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 385
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryProgressVisible(Z)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 7
    .parameter "setEnable"

    .prologue
    .line 226
    const/4 v3, 0x0

    .line 227
    .local v3, setEnableInt:I
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 229
    :cond_0
    iput v3, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    .line 231
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 232
    const-string v5, "[MusicMaActivity]"

    const-string v6, "activity is paused, do not set category right button status"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_1
    :goto_0
    return-void

    .line 236
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v2

    .line 237
    .local v2, parent:Landroid/app/Activity;
    instance-of v5, v2, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v5, :cond_1

    move-object v1, v2

    .line 238
    check-cast v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    .line 240
    .local v1, multiParent:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
    const/4 v4, 0x6

    .line 241
    .local v4, type:I
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 242
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 243
    const-string v5, "InnerActivityType"

    const/4 v6, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 246
    :cond_3
    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 247
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setStoreRightBtn()V

    goto :goto_0

    .line 249
    :cond_4
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setOnlineSearchRightBtn()V

    goto :goto_0
.end method

.method protected setCategoryRightBtn2Enable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 457
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 462
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 463
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtn2Enable(Z)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 445
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 450
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 451
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1, p2}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn2OnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "clickListener"

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 469
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 474
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 475
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtn2OnClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn2Visible(Z)V
    .locals 3
    .parameter "setVisibile"

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 433
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 438
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 439
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtn2Visible(Z)V

    goto :goto_0
.end method

.method protected setCategoryRightBtnEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 406
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 411
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 412
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnEnable(Z)V

    goto :goto_0
.end method

.method protected setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 399
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 400
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1, p2}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setCategoryRightBtnOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "clickListener"

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 423
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 424
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected setCategorySecondaryTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 360
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 361
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setCategorySecondaryTitleVisible(Z)V
    .locals 3
    .parameter "setVisible"

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 367
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 372
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 373
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitleVisible(Z)V

    goto :goto_0
.end method

.method protected setCatgoryMainTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 343
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 348
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 349
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setMainTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected showNewDialog(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 695
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/widget/MusicMaActivity;->showNewDialog(ILandroid/os/Bundle;)V

    .line 696
    return-void
.end method

.method protected showNewDialog(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "args"

    .prologue
    .line 699
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->removeDialog(I)V

    .line 700
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/widget/MusicMaActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 701
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 7
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 299
    const-string v3, "StartNewActivity"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 300
    .local v0, forceStartNewActivity:Z
    if-eqz v0, :cond_0

    .line 301
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 331
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    .line 308
    .local v1, rootParent:Landroid/app/Activity;
    instance-of v3, v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v3, :cond_4

    move-object v2, v1

    .line 310
    check-cast v2, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 312
    .local v2, tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    const/4 v3, -0x2

    if-ne v3, p2, :cond_1

    .line 313
    invoke-super {p0, p1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 314
    :cond_1
    if-ne v5, p2, :cond_3

    .line 315
    const-string v3, "com.htc.music.PLAYBACK_VIEWER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 316
    invoke-super {p0, p1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 318
    :cond_2
    const-string v3, "ShowActivityTitle"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 325
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 329
    .end local v2           #tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startLocalSearch()V
    .locals 2

    .prologue
    .line 571
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.LOCALSEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 573
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 574
    return-void
.end method

.method public startOnlineSearchPage()V
    .locals 2

    .prologue
    .line 577
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.ONLINESEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 579
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 580
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 5
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    const/4 v4, 0x6

    .line 549
    const-string v2, "[MusicMaActivity]"

    const-string v3, "musicMaActivity startSearch...."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    if-nez v2, :cond_0

    .line 568
    :goto_0
    return-void

    .line 552
    :cond_0
    const/4 v1, 0x0

    .line 553
    .local v1, type:I
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 554
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 555
    const-string v2, "InnerActivityType"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 556
    and-int/lit16 v1, v1, 0xfe

    .line 559
    :cond_1
    if-eq v4, v1, :cond_2

    const/4 v2, 0x2

    if-ne v2, v1, :cond_4

    .line 561
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->startLocalSearch()V

    .line 567
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0

    .line 562
    :cond_4
    const/16 v2, 0xa

    if-eq v2, v1, :cond_5

    const/16 v2, 0x8

    if-ne v2, v1, :cond_3

    .line 564
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->startOnlineSearchPage()V

    goto :goto_1
.end method
