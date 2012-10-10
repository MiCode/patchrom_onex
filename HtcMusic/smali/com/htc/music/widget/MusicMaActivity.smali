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

    .line 222
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    .line 511
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    .line 582
    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    .line 595
    new-instance v0, Lcom/htc/music/widget/MusicMaActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicMaActivity$2;-><init>(Lcom/htc/music/widget/MusicMaActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->messageHandler:Landroid/os/Handler;

    .line 633
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    .line 827
    new-instance v0, Lcom/htc/music/widget/MusicMaActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicMaActivity$3;-><init>(Lcom/htc/music/widget/MusicMaActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

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

.method private handleTVReadyToPlay()V
    .locals 1

    .prologue
    .line 852
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicMaActivity;->handleTVReadyToPlay(Z)V

    .line 853
    return-void
.end method

.method private launchPlayer()V
    .locals 5

    .prologue
    .line 842
    const-string v1, "[MusicMaActivity]"

    const-string v2, "launchPlayer"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 845
    const-string v1, "showEmptyQueue"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 846
    const-string v1, "from-lockscreen"

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from-lockscreen"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 848
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicMaActivity;->startActivity(Landroid/content/Intent;)V

    .line 849
    return-void
.end method

.method private registerTVDisplayHelper()V
    .locals 3

    .prologue
    .line 737
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    if-nez v1, :cond_0

    .line 738
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mHtcTVDisplayListener:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;

    invoke-direct {v1, p0, v2}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;-><init>(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mTVHelper:Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;

    .line 744
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 745
    .local v0, fDLNA:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.triggerplayinlibrary"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNABroadcastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/widget/MusicMaActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 747
    return-void

    .line 741
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
    .line 219
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
    .line 585
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v7

    .line 586
    .local v7, deleteContent:Landroid/app/Activity;
    if-nez v7, :cond_0

    move-object v7, p1

    check-cast v7, Landroid/app/Activity;

    .line 588
    :cond_0
    const-string v1, ""

    const v2, 0x7f0700b2

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicMaActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v7, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    .line 589
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

    .line 590
    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity$DeleteCursorRunnable;->Init(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 592
    .local v8, deletethread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 593
    return-void
.end method

.method protected disableCategoryDropDown()V
    .locals 3

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 498
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 503
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 504
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0}, Lcom/htc/music/widget/IMusicTabActivityInterface;->disableCategoryDropDown()V

    goto :goto_0
.end method

.method public disableSearch()V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    .line 515
    return-void
.end method

.method public dismissActiveDialog()V
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    .line 722
    iget v1, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    if-ne v1, v3, :cond_0

    .line 733
    :goto_0
    return-void

    .line 727
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicMaActivity;->dismissDialog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    iput v3, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "[MusicMaActivity]"

    const-string v2, "[dismissActiveDialog] ."

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
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

    .line 524
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    if-eqz v1, :cond_0

    .line 525
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 532
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    if-eqz v1, :cond_1

    .line 533
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 539
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :pswitch_0
    return v0

    .line 527
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->onSearchRequested()Z

    goto :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_1
    .end packed-switch

    .line 533
    :pswitch_data_1
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public enableSearch()V
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    .line 519
    return-void
.end method

.method public findRootParent()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 256
    .local v0, rootParent:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 264
    .end local p0
    :goto_0
    return-object p0

    .line 258
    .restart local p0
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 259
    .local v1, temp:Landroid/app/Activity;
    :goto_1
    if-eqz v1, :cond_1

    .line 260
    move-object v0, v1

    .line 261
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object p0, v0

    .line 264
    goto :goto_0
.end method

.method protected handleTVReadyToPlay(Z)V
    .locals 11
    .parameter "playDMS"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 856
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v8, :cond_0

    .line 857
    const-string v6, "[MusicMaActivity]"

    const-string v7, "handleTVReadyToPlay, sService is null!"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :goto_0
    return-void

    .line 861
    :cond_0
    const/4 v2, 0x0

    .line 862
    .local v2, isDMCOrPush:Z
    const/4 v3, 0x0

    .line 864
    .local v3, isQueueEmpty:Z
    if-nez p1, :cond_1

    .line 867
    :try_start_0
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v2

    .line 868
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 869
    .local v5, queueLength:I
    if-gtz v5, :cond_1

    .line 870
    const/4 v3, 0x1

    .line 877
    .end local v5           #queueLength:I
    :cond_1
    :goto_1
    const-string v8, "[MusicMaActivity]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleTVReadyToPlay, playDMS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isDMCOrPush: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isQueueEmpty: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    if-nez p1, :cond_2

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    :cond_2
    move v0, v7

    .line 881
    .local v0, connectDMR:Z
    :goto_2
    if-eqz v0, :cond_5

    .line 882
    iget-boolean v8, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsDLNAManagerConnected:Z

    if-nez v8, :cond_4

    .line 883
    iput-boolean v7, p0, Lcom/htc/music/widget/MusicMaActivity;->mNeedSetRendererAsDongle:Z

    .line 884
    iget-object v6, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v7, p0, Lcom/htc/music/widget/MusicMaActivity;->mControllerListener:Lcom/htc/music/widget/MusicMaActivity$ControllerListener;

    invoke-virtual {v6, v7}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V

    .line 885
    iget-object v6, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v7, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAServiceStatusListener:Lcom/htc/music/widget/MusicMaActivity$DLNAMusicServiceStatusListener;

    invoke-virtual {v6, v7}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->connect(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z

    goto :goto_0

    .line 872
    .end local v0           #connectDMR:Z
    :catch_0
    move-exception v1

    .line 873
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    move v0, v6

    .line 879
    goto :goto_2

    .line 887
    .restart local v0       #connectDMR:Z
    :cond_4
    new-instance v4, Lcom/htc/dlnainterface/DLNAStatusBarData;

    invoke-direct {v4}, Lcom/htc/dlnainterface/DLNAStatusBarData;-><init>()V

    .line 888
    .local v4, notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    iput v7, v4, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 889
    const-string v7, "com.htc.music.PLAYBACK_VIEWER"

    iput-object v7, v4, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 890
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0701d2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 891
    const-string v7, "HtcMusic"

    iput-object v7, v4, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 893
    iget-object v7, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v7, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    .line 895
    iput-boolean v6, p0, Lcom/htc/music/widget/MusicMaActivity;->mNeedSetRendererAsDongle:Z

    goto/16 :goto_0

    .line 898
    .end local v4           #notification:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :cond_5
    iput-boolean v6, p0, Lcom/htc/music/widget/MusicMaActivity;->mNeedSetRendererAsDongle:Z

    goto/16 :goto_0
.end method

.method protected isActivityResumed()Z
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mActivityResumed:Z

    return v0
.end method

.method public isByPass()Z
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 333
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 334
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 276
    .local v0, rootParent:Landroid/app/Activity;
    if-eq p0, v0, :cond_0

    .line 277
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 159
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

    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 162
    iget v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->resetBackground()V

    .line 168
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mOrientation:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 130
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mOrientation:I

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    .line 135
    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    .line 137
    const/4 v1, -0x1

    sget v2, Lcom/htc/music/widget/MusicMaActivity;->mEnableLandscapeHorizontalSDError:I

    if-ne v1, v2, :cond_1

    .line 138
    const v1, 0x7f0701e7

    invoke-static {p0, v1}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v1

    sput v1, Lcom/htc/music/widget/MusicMaActivity;->mEnableLandscapeHorizontalSDError:I

    .line 141
    :cond_1
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-direct {v1, p0, v3, v3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 142
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mControllerListener:Lcom/htc/music/widget/MusicMaActivity$ControllerListener;

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V

    .line 143
    return-void
.end method

.method public onDeletionCompleted()V
    .locals 2

    .prologue
    .line 636
    const-string v0, "[MusicMaActivity]"

    const-string v1, "call parent Empty onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 149
    return-void
.end method

.method public onMaBackPressed()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->closeOptionsMenu()V

    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 200
    iput-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mActivityResumed:Z

    .line 202
    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;->releaseTVDisplayHelper()V

    .line 203
    invoke-direct {p0, v0}, Lcom/htc/music/widget/MusicMaActivity;->setDLNAPreloadEnable(Z)V

    .line 204
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mDLNAManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->disconnect()V

    .line 207
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 706
    iput p1, p0, Lcom/htc/music/widget/MusicMaActivity;->activeDialog:I

    .line 707
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 708
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 173
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mActivityResumed:Z

    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 177
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 179
    .local v0, newConfig:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicMaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 182
    .end local v0           #newConfig:Landroid/content/res/Configuration;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->resetBackground()V

    .line 185
    const/4 v1, -0x1

    iget v3, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    if-ne v1, v3, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicMaActivity;->setCategoryRightBtn(Z)V

    .line 190
    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;->registerTVDisplayHelper()V

    .line 191
    invoke-direct {p0, v2}, Lcom/htc/music/widget/MusicMaActivity;->setDLNAPreloadEnable(Z)V

    .line 192
    return-void

    .line 185
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
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 154
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->dismissActiveDialog()V

    .line 155
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 212
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    return-void
.end method

.method protected resetBackground()V
    .locals 5

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    const-string v2, "common_app_bkg"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, resId:I
    const-string v1, "common_app_bkg"

    invoke-static {p0, v1, v0}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 117
    if-lez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 122
    .end local v0           #resId:I
    :cond_0
    return-void
.end method

.method protected setCategoryLeftBtnVisible(Z)V
    .locals 3
    .parameter "setVisible"

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 483
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 488
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 489
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryLeftBtnVisible(Z)V

    goto :goto_0
.end method

.method protected setCategoryProgressVisible(Z)V
    .locals 3
    .parameter "setVisible"

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 377
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 382
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 383
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryProgressVisible(Z)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 7
    .parameter "setEnable"

    .prologue
    .line 224
    const/4 v3, 0x0

    .line 225
    .local v3, setEnableInt:I
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 227
    :cond_0
    iput v3, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    .line 229
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 230
    const-string v5, "[MusicMaActivity]"

    const-string v6, "activity is paused, do not set category right button status"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 234
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v2

    .line 235
    .local v2, parent:Landroid/app/Activity;
    instance-of v5, v2, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v5, :cond_1

    move-object v1, v2

    .line 236
    check-cast v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    .line 238
    .local v1, multiParent:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
    const/4 v4, 0x6

    .line 239
    .local v4, type:I
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 240
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 241
    const-string v5, "InnerActivityType"

    const/4 v6, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 244
    :cond_3
    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 245
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setStoreRightBtn()V

    goto :goto_0

    .line 247
    :cond_4
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setOnlineSearchRightBtn()V

    goto :goto_0
.end method

.method protected setCategoryRightBtn2Enable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 455
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 460
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 461
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
    .line 442
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 443
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 448
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 449
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1, p2}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn2OnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "clickListener"

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 467
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 472
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 473
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtn2OnClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn2Visible(Z)V
    .locals 3
    .parameter "setVisibile"

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 431
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 436
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 437
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtn2Visible(Z)V

    goto :goto_0
.end method

.method protected setCategoryRightBtnEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 404
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 409
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 410
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
    .line 391
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 392
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 397
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 398
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1, p2}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setCategoryRightBtnOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "clickListener"

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 416
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 421
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 422
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected setCategorySecondaryTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 353
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 358
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 359
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setCategorySecondaryTitleVisible(Z)V
    .locals 3
    .parameter "setVisible"

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 365
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 370
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 371
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitleVisible(Z)V

    goto :goto_0
.end method

.method protected setCatgoryMainTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 341
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 346
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 347
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setMainTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected showNewDialog(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 696
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/widget/MusicMaActivity;->showNewDialog(ILandroid/os/Bundle;)V

    .line 697
    return-void
.end method

.method protected showNewDialog(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "args"

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->removeDialog(I)V

    .line 701
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/widget/MusicMaActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 702
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 7
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 297
    const-string v3, "StartNewActivity"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 298
    .local v0, forceStartNewActivity:Z
    if-eqz v0, :cond_0

    .line 299
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 329
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    .line 306
    .local v1, rootParent:Landroid/app/Activity;
    instance-of v3, v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v3, :cond_4

    move-object v2, v1

    .line 308
    check-cast v2, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 310
    .local v2, tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    const/4 v3, -0x2

    if-ne v3, p2, :cond_1

    .line 311
    invoke-super {p0, p1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 312
    :cond_1
    if-ne v5, p2, :cond_3

    .line 313
    const-string v3, "com.htc.music.PLAYBACK_VIEWER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    invoke-super {p0, p1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 316
    :cond_2
    const-string v3, "ShowActivityTitle"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 323
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 327
    .end local v2           #tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startLocalSearch()V
    .locals 2

    .prologue
    .line 569
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.LOCALSEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 571
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 572
    return-void
.end method

.method public startOnlineSearchPage()V
    .locals 2

    .prologue
    .line 575
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.ONLINESEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 577
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 578
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

    .line 547
    const-string v2, "[MusicMaActivity]"

    const-string v3, "musicMaActivity startSearch...."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-boolean v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    if-nez v2, :cond_0

    .line 566
    :goto_0
    return-void

    .line 550
    :cond_0
    const/4 v1, 0x0

    .line 551
    .local v1, type:I
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 552
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 553
    const-string v2, "InnerActivityType"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 554
    and-int/lit16 v1, v1, 0xfe

    .line 557
    :cond_1
    if-eq v4, v1, :cond_2

    const/4 v2, 0x2

    if-ne v2, v1, :cond_4

    .line 559
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->startLocalSearch()V

    .line 565
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0

    .line 560
    :cond_4
    const/16 v2, 0xa

    if-eq v2, v1, :cond_5

    const/16 v2, 0x8

    if-ne v2, v1, :cond_3

    .line 562
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicMaActivity;->startOnlineSearchPage()V

    goto :goto_1
.end method
