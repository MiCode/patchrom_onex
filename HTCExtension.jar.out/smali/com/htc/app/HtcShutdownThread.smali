.class public final Lcom/htc/app/HtcShutdownThread;
.super Ljava/lang/Thread;
.source "HtcShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final FM_SERVICE_COMMAND:Ljava/lang/String; = "com.htc.fm.servicecommand"

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x40

.field private static final MAX_RESTART_WAIT_TIME:I = 0x2710

.field private static final MAX_SHUTDOWN_ANIMATION_TIME:I = 0x2710

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final SHUTDOWN_CIQ:Ljava/lang/String; = "com.android.internal.policy.impl.SHUTDOWN_CIQ"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcShutdownThread"

.field private static mHibernate:Z

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mResumeCount:I

.field private static mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

.field private static pd:Landroid/app/ProgressDialog;

.field private static sInstance:Lcom/htc/app/HtcShutdownThread;

.field private static sIsAnimationCompleted:Z

.field private static sIsAnimationReady:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static shutdown:Lcom/htc/shutdown/HtcShutdownScreen;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 101
    sput-boolean v1, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    .line 102
    sput-boolean v1, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    .line 103
    sput-boolean v1, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    .line 124
    sput v1, Lcom/htc/app/HtcShutdownThread;->mResumeCount:I

    .line 528
    new-instance v0, Lcom/htc/app/HtcShutdownThread$4;

    invoke-direct {v0}, Lcom/htc/app/HtcShutdownThread$4;-><init>()V

    sput-object v0, Lcom/htc/app/HtcShutdownThread;->mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 127
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput-boolean p0, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-static {p0}, Lcom/htc/app/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    sput-boolean p0, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    return p0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/16 v14, 0x7da

    const/4 v9, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 409
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SHUTDOWN_ANIMATION"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 412
    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v8

    .line 413
    :try_start_0
    sget-boolean v7, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    if-eqz v7, :cond_1

    .line 416
    const-string v7, "HtcShutdownThread"

    const-string v9, "Shutdown sequence already running, returning."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    monitor-exit v8

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    const/4 v7, 0x1

    sput-boolean v7, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    .line 420
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .local v6, home:Landroid/content/Intent;
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 427
    const/16 v7, 0xd8

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v7, v8, :cond_2

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v9, v7, :cond_4

    :cond_2
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v12, v7, :cond_3

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v9, v7, :cond_4

    :cond_3
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v9, v7, :cond_6

    .line 431
    :cond_4
    const-string v7, "ctl.stop"

    const-string v8, "zchgd_onmode"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x2710

    add-long v4, v7, v9

    .line 434
    .local v4, endRestartTime:J
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v1, v4, v7

    .line 435
    .local v1, delay:J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-gtz v7, :cond_9

    .line 453
    .end local v1           #delay:J
    .end local v4           #endRestartTime:J
    :cond_6
    :goto_1
    invoke-static {}, Lcom/htc/app/HtcShutdownThread;->isUseAnimation()Z

    move-result v0

    .line 454
    .local v0, bUseAnim:Z
    if-nez v0, :cond_a

    .line 457
    new-instance v7, Landroid/app/ProgressDialog;

    invoke-direct {v7, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 458
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v8, 0x1040137

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 459
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v8, 0x104013b

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 460
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v12}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 461
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v11}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 462
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/view/Window;->setType(I)V

    .line 464
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    .line 465
    sput-boolean v12, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    .line 466
    sput-boolean v12, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    .line 485
    :goto_2
    new-instance v7, Lcom/htc/app/HtcShutdownThread;

    invoke-direct {v7}, Lcom/htc/app/HtcShutdownThread;-><init>()V

    sput-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    .line 486
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object p0, v7, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    .line 487
    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    const-string v7, "power"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, v8, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 488
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7, v11}, Landroid/os/PowerManager;->setAblActive(I)V

    .line 490
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 492
    :try_start_1
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v8, v8, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v9, 0x1

    const-string v10, "HtcShutdownThread-cpu"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 494
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v7, :cond_7

    .line 495
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 496
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 505
    :cond_7
    :goto_3
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 506
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 508
    :try_start_2
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    sget-object v8, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v8, v8, Lcom/htc/app/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v9, 0x1a

    const-string v10, "HtcShutdownThread-screen"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 510
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v7, :cond_8

    .line 511
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 512
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iget-object v7, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 520
    :cond_8
    :goto_4
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    new-instance v8, Lcom/htc/app/HtcShutdownThread$3;

    invoke-direct {v8}, Lcom/htc/app/HtcShutdownThread$3;-><init>()V

    iput-object v8, v7, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    .line 522
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    invoke-virtual {v7}, Lcom/htc/app/HtcShutdownThread;->isAlive()Z

    move-result v7

    if-nez v7, :cond_0

    .line 523
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    invoke-virtual {v7}, Lcom/htc/app/HtcShutdownThread;->start()V

    goto/16 :goto_0

    .line 420
    .end local v0           #bUseAnim:Z
    .end local v6           #home:Landroid/content/Intent;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 444
    .restart local v1       #delay:J
    .restart local v4       #endRestartTime:J
    .restart local v6       #home:Landroid/content/Intent;
    :cond_9
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v7, 0x64

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 448
    :goto_5
    const-string v7, "zchgd_onmode"

    const-string v8, "stopped"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "stopped"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_1

    .line 471
    .end local v1           #delay:J
    .end local v4           #endRestartTime:J
    .restart local v0       #bUseAnim:Z
    :cond_a
    new-instance v7, Lcom/htc/shutdown/HtcShutdownScreen;

    const v8, 0x1030005

    invoke-direct {v7, p0, v8}, Lcom/htc/shutdown/HtcShutdownScreen;-><init>(Landroid/content/Context;I)V

    sput-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    .line 472
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    sget-object v8, Lcom/htc/app/HtcShutdownThread;->mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

    invoke-virtual {v7, v8}, Lcom/htc/shutdown/HtcShutdownScreen;->setShutdownListener(Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;)V

    .line 473
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/view/Window;->setType(I)V

    .line 474
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 476
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, -0x8000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 478
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7, v11}, Lcom/htc/shutdown/HtcShutdownScreen;->setCancelable(Z)V

    .line 479
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {v7}, Lcom/htc/shutdown/HtcShutdownScreen;->show()V

    .line 481
    sput-boolean v11, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    goto/16 :goto_2

    .line 498
    :catch_0
    move-exception v3

    .line 501
    .local v3, e:Ljava/lang/SecurityException;
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_3

    .line 514
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 517
    .restart local v3       #e:Ljava/lang/SecurityException;
    sget-object v7, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    iput-object v13, v7, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_4

    .line 446
    .end local v0           #bUseAnim:Z
    .end local v3           #e:Ljava/lang/SecurityException;
    .restart local v1       #delay:J
    .restart local v4       #endRestartTime:J
    :catch_2
    move-exception v7

    goto :goto_5
.end method

.method public static hibernate(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v4, 0x1

    .line 390
    sput-boolean v4, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 391
    const-string v2, "sys.shutdown.mode"

    const-string v3, "hibernate"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hibernate_nowait"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 400
    .local v1, nowait:I
    :goto_0
    if-ne v1, v4, :cond_0

    .line 401
    const-string v2, "sys.shutdown.nowait"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/app/HtcShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 404
    return-void

    .line 397
    .end local v1           #nowait:I
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    .restart local v1       #nowait:I
    goto :goto_0
.end method

.method private static isUseAnimation()Z
    .locals 11

    .prologue
    .line 1332
    new-instance v6, Lcom/htc/shutdown/ConfigReader;

    invoke-direct {v6}, Lcom/htc/shutdown/ConfigReader;-><init>()V

    .line 1333
    .local v6, mReader:Lcom/htc/shutdown/ConfigReader;
    new-instance v5, Lcom/htc/shutdown/ConfigData;

    invoke-direct {v5}, Lcom/htc/shutdown/ConfigData;-><init>()V

    .line 1334
    .local v5, mData:Lcom/htc/shutdown/ConfigData;
    const/4 v8, 0x0

    .line 1335
    .local v8, useAnimation:Z
    const-string v9, "ro.cid"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1339
    .local v7, str_cid:Ljava/lang/String;
    const-string v3, "/data/data/cw/animation.xml"

    .line 1340
    .local v3, cw_config_path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1341
    .local v2, cwConfig:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1344
    invoke-virtual {v6, v3}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1347
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 1350
    const/4 v9, 0x1

    .line 1412
    :goto_0
    return v9

    .line 1354
    :cond_0
    if-eqz v7, :cond_6

    .line 1358
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/customize/CID/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1362
    .local v1, config_path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1363
    .local v0, config:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1364
    invoke-virtual {v6, v1}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1366
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_4

    .line 1369
    const-string v9, "/system/customize/CID/default.xml"

    invoke-virtual {v6, v9}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1371
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_3

    .line 1405
    .end local v0           #config:Ljava/io/File;
    .end local v1           #config_path:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 1406
    new-instance v4, Ljava/io/File;

    const-string v9, "/system/customize/resource/shutdown.zip"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1407
    .local v4, defaultFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1408
    const/4 v8, 0x1

    .end local v4           #defaultFile:Ljava/io/File;
    :cond_2
    move v9, v8

    .line 1412
    goto :goto_0

    .line 1375
    .restart local v0       #config:Ljava/io/File;
    .restart local v1       #config_path:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x1

    goto :goto_1

    .line 1378
    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    .line 1383
    :cond_5
    const-string v9, "/system/customize/CID/default.xml"

    invoke-virtual {v6, v9}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1385
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1389
    const/4 v8, 0x1

    goto :goto_1

    .line 1395
    .end local v0           #config:Ljava/io/File;
    .end local v1           #config_path:Ljava/lang/String;
    :cond_6
    const-string v9, "/system/customize/CID/default.xml"

    invoke-virtual {v6, v9}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1396
    invoke-virtual {v6}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v5

    .line 1397
    iget-object v9, v5, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1401
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 379
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    .line 380
    sput-object p1, Lcom/htc/app/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 381
    invoke-static {p0, p2}, Lcom/htc/app/HtcShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 382
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 10
    .parameter "context"
    .parameter "confirm"

    .prologue
    .line 145
    sget-object v9, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v9

    .line 146
    :try_start_0
    sget-boolean v8, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    if-eqz v8, :cond_1

    .line 149
    monitor-exit v9

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    if-eqz p1, :cond_3

    .line 167
    sget-boolean v8, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    if-eqz v8, :cond_2

    .line 168
    const v5, 0x20400ce

    .line 169
    .local v5, idTitle:I
    const v2, 0x20400cf

    .line 170
    .local v2, idMessage:I
    const v4, 0x20400d0

    .line 171
    .local v4, idPositive:I
    const v3, 0x1040009

    .line 179
    .local v3, idNegative:I
    :goto_1
    new-instance v0, Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, closer:Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x1080027

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/htc/app/HtcShutdownThread$2;

    invoke-direct {v9, p0}, Lcom/htc/app/HtcShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/htc/app/HtcShutdownThread$1;

    invoke-direct {v9}, Lcom/htc/app/HtcShutdownThread$1;-><init>()V

    invoke-virtual {v8, v3, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 206
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    iput-object v1, v0, Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 207
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 208
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 209
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 211
    sget-object v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 212
    .local v7, version:F
    const/high16 v8, 0x4000

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_0

    .line 213
    invoke-static {p0, v1, v7}, Lcom/htc/app/HtcShutdownThread;->updateSkinResource(Landroid/content/Context;Lcom/htc/widget/HtcAlertDialog;F)V

    goto :goto_0

    .line 151
    .end local v0           #closer:Lcom/htc/app/HtcShutdownThread$CloseDialogReceiver;
    .end local v1           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v2           #idMessage:I
    .end local v3           #idNegative:I
    .end local v4           #idPositive:I
    .end local v5           #idTitle:I
    .end local v7           #version:F
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 173
    :cond_2
    const v5, 0x1040137

    .line 174
    .restart local v5       #idTitle:I
    const v2, 0x104013c

    .line 175
    .restart local v2       #idMessage:I
    const v4, 0x1040013

    .line 176
    .restart local v4       #idPositive:I
    const v3, 0x1040009

    .restart local v3       #idNegative:I
    goto :goto_1

    .line 217
    .end local v2           #idMessage:I
    .end local v3           #idNegative:I
    .end local v4           #idPositive:I
    .end local v5           #idTitle:I
    :cond_3
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcCIQFlag:Z

    if-eqz v8, :cond_4

    .line 219
    :try_start_2
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.android.internal.policy.impl.SHUTDOWN_CIQ"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 226
    .end local v6           #intent:Landroid/content/Intent;
    :cond_4
    :goto_2
    invoke-static {p0}, Lcom/htc/app/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 221
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private static updateSkinResource(Landroid/content/Context;Lcom/htc/widget/HtcAlertDialog;F)V
    .locals 18
    .parameter "context"
    .parameter "dialog"
    .parameter "version"

    .prologue
    .line 265
    if-nez p1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const-string v14, "HtcShutdownThread"

    const-string v15, "updateSkinResource(), dialog is not null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 271
    .local v1, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 272
    .local v4, config:Landroid/content/res/Configuration;
    iget-object v12, v4, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 275
    .local v12, skinPackage:Ljava/lang/String;
    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    .line 276
    .local v8, positiveBtn:Landroid/widget/Button;
    const/4 v14, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    .line 278
    .local v7, negativeBtn:Landroid/widget/Button;
    const/high16 v14, 0x4080

    cmpl-float v14, p2, v14

    if-ltz v14, :cond_6

    .line 279
    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "default"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 280
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 282
    .local v9, res:Landroid/content/res/Resources;
    const-string v14, "b_button_primary"

    const-string v15, "color"

    const-string v16, "com.htc"

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 285
    .local v3, colorId:I
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 287
    .local v2, button_skin:Landroid/content/res/ColorStateList;
    if-eqz v8, :cond_3

    .line 289
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 292
    :cond_3
    if-eqz v7, :cond_0

    .line 294
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 359
    .end local v2           #button_skin:Landroid/content/res/ColorStateList;
    .end local v3           #colorId:I
    .end local v4           #config:Landroid/content/res/Configuration;
    .end local v7           #negativeBtn:Landroid/widget/Button;
    .end local v8           #positiveBtn:Landroid/widget/Button;
    .end local v9           #res:Landroid/content/res/Resources;
    .end local v12           #skinPackage:Ljava/lang/String;
    :catch_0
    move-exception v14

    goto :goto_0

    .line 297
    .restart local v4       #config:Landroid/content/res/Configuration;
    .restart local v7       #negativeBtn:Landroid/widget/Button;
    .restart local v8       #positiveBtn:Landroid/widget/Button;
    .restart local v12       #skinPackage:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    .line 299
    .local v13, themeres:Landroid/content/res/Resources;
    const-string v14, "b_button_primary"

    const-string v15, "color"

    invoke-virtual {v13, v14, v15, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 302
    .restart local v3       #colorId:I
    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 304
    .restart local v2       #button_skin:Landroid/content/res/ColorStateList;
    if-eqz v8, :cond_5

    .line 306
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 309
    :cond_5
    if-eqz v7, :cond_0

    .line 311
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 320
    .end local v2           #button_skin:Landroid/content/res/ColorStateList;
    .end local v3           #colorId:I
    .end local v13           #themeres:Landroid/content/res/Resources;
    :cond_6
    const/high16 v14, 0x4060

    cmpl-float v14, p2, v14

    if-ltz v14, :cond_9

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "popup_bottom_left"

    const-string v16, "drawable"

    const-string v17, "com.htc"

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 322
    .local v5, leftBtnResId:I
    const-string v6, "popup_bottom_left"

    .line 323
    .local v6, leftBtnResStr:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "popup_bottom_right"

    const-string v16, "drawable"

    const-string v17, "com.htc"

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 324
    .local v10, rightBtnResId:I
    const-string v11, "popup_bottom_right"

    .line 331
    .local v11, rightBtnResStr:Ljava/lang/String;
    :goto_1
    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "default"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 333
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 335
    .restart local v9       #res:Landroid/content/res/Resources;
    if-eqz v8, :cond_8

    .line 337
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    :cond_8
    if-eqz v7, :cond_0

    .line 342
    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 326
    .end local v5           #leftBtnResId:I
    .end local v6           #leftBtnResStr:Ljava/lang/String;
    .end local v9           #res:Landroid/content/res/Resources;
    .end local v10           #rightBtnResId:I
    .end local v11           #rightBtnResStr:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "command_bar_btn"

    const-string v16, "drawable"

    const-string v17, "com.htc"

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .restart local v5       #leftBtnResId:I
    move v10, v5

    .line 327
    .restart local v10       #rightBtnResId:I
    const-string v6, "command_bar_btn"

    .restart local v6       #leftBtnResStr:Ljava/lang/String;
    move-object v11, v6

    .restart local v11       #rightBtnResStr:Ljava/lang/String;
    goto :goto_1

    .line 346
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    .line 348
    .restart local v13       #themeres:Landroid/content/res/Resources;
    if-eqz v8, :cond_b

    .line 350
    const-string v14, "drawable"

    invoke-virtual {v13, v11, v14, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    :cond_b
    if-eqz v7, :cond_0

    .line 355
    const-string v14, "drawable"

    invoke-virtual {v13, v6, v14, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 549
    iget-object v1, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 550
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 551
    iget-object v0, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 552
    monitor-exit v1

    .line 553
    return-void

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dismissDialog(Landroid/app/Dialog;)V
    .locals 8
    .parameter "dialog"

    .prologue
    .line 567
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 568
    iget-object v4, p0, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/htc/app/HtcShutdownThread$5;

    invoke-direct {v5, p0, p1}, Lcom/htc/app/HtcShutdownThread$5;-><init>(Lcom/htc/app/HtcShutdownThread;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 579
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long v2, v4, v6

    .line 580
    .local v2, endTime:J
    iget-object v5, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v5

    .line 581
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    if-nez v4, :cond_0

    .line 582
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 583
    .local v0, delay:J
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-gtz v4, :cond_1

    .line 593
    .end local v0           #delay:J
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    return-void

    .line 589
    .restart local v0       #delay:J
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 590
    :catch_0
    move-exception v4

    goto :goto_0

    .line 593
    .end local v0           #delay:J
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method dismissProgressDialog()V
    .locals 1

    .prologue
    .line 562
    sget-object v0, Lcom/htc/app/HtcShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v0}, Lcom/htc/app/HtcShutdownThread;->dismissDialog(Landroid/app/Dialog;)V

    .line 563
    return-void
.end method

.method dismissShutdownScreen()V
    .locals 1

    .prologue
    .line 557
    sget-object v0, Lcom/htc/app/HtcShutdownThread;->shutdown:Lcom/htc/shutdown/HtcShutdownScreen;

    invoke-virtual {p0, v0}, Lcom/htc/app/HtcShutdownThread;->dismissDialog(Landroid/app/Dialog;)V

    .line 558
    return-void
.end method

.method public run()V
    .locals 55

    .prologue
    .line 606
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1328
    :goto_0
    return-void

    .line 608
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    .line 612
    const/4 v12, 0x1

    .line 613
    .local v12, PHONE_TYPE_GSM:I
    const/4 v11, 0x2

    .line 614
    .local v11, PHONE_TYPE_CDMA:I
    const/4 v13, 0x5

    .line 619
    .local v13, PHONE_TYPE_SUB_GSM:I
    const/16 v40, 0x0

    .line 620
    .local v40, radioOff:Z
    const/16 v38, 0x0

    .line 621
    .local v38, radioGsmOff:Z
    const/16 v36, 0x0

    .line 622
    .local v36, radioCdmaOff:Z
    const/16 v41, 0x0

    .line 624
    .local v41, radioSubGsmOff:Z
    const/16 v50, 0x0

    .line 625
    .local v50, wifiOff:Z
    const/16 v48, 0x0

    .line 626
    .local v48, wifiApOff:Z
    const/16 v53, 0x0

    .line 628
    .local v53, wimaxOff:Z
    const/16 v43, 0x0

    .line 630
    .local v43, radioWasOn:Z
    const/16 v39, 0x0

    .line 631
    .local v39, radioGsmWasOn:Z
    const/16 v37, 0x0

    .line 632
    .local v37, radioCdmaWasOn:Z
    const/16 v42, 0x0

    .line 634
    .local v42, radioSubGsmWasOn:Z
    const/16 v51, 0x0

    .line 635
    .local v51, wifiWasOn:Z
    const/16 v49, 0x0

    .line 636
    .local v49, wifiApWasOn:Z
    const/16 v54, 0x0

    .line 638
    .local v54, wimaxWasOn:Z
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->sIsAnimationReady:Z

    .line 640
    const/4 v2, 0x1

    const-string v3, "shutdown"

    invoke-static {v2, v3}, Landroid/os/Power;->acquireWakeLock(ILjava/lang/String;)V

    .line 642
    new-instance v5, Lcom/htc/app/HtcShutdownThread$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/app/HtcShutdownThread$6;-><init>(Lcom/htc/app/HtcShutdownThread;)V

    .line 649
    .local v5, br:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v14

    .line 651
    .local v14, alarm:Landroid/app/IAlarmManager;
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_2a

    .line 653
    :try_start_0
    invoke-interface {v14}, Landroid/app/IAlarmManager;->startHibernate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_19

    .line 659
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 661
    const-string v2, "sys.shutdown.hibernate.mode"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 672
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v27, v2, v6

    .line 673
    .local v27, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 674
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v18, v27, v6

    .line 676
    .local v18, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v18, v6

    if-gtz v2, :cond_2b

    .line 686
    .end local v18           #delay:J
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 688
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v34

    .line 690
    .local v34, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v16

    .line 693
    .local v16, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v32

    .line 697
    .local v32, mount:Landroid/os/storage/IMountService;
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v47

    .line 699
    .local v47, wifi:Landroid/net/wifi/IWifiManager;
    const-string v2, "wimax"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/net/wimax/IWimaxController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/net/wimax/IWimaxController;

    move-result-object v52

    .line 701
    .local v52, wimax:Lcom/htc/net/wimax/IWimaxController;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 703
    .local v10, IsAirplaneMode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v46

    .line 707
    .local v46, screenBrightnessMode:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v45

    .line 713
    .local v45, screenBrightness:I
    :goto_4
    if-nez v46, :cond_2c

    .line 714
    const-string v2, "sys.shutdown.brightness"

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, v45

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :goto_5
    if-eqz v16, :cond_2

    :try_start_3
    invoke-interface/range {v16 .. v16}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2d

    :cond_2
    const/16 v17, 0x1

    .line 723
    .local v17, bluetoothOff:Z
    :goto_6
    if-nez v17, :cond_3

    .line 726
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 735
    :cond_3
    :goto_7
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 737
    if-eqz v34, :cond_4

    :try_start_4
    move-object/from16 v0, v34

    invoke-interface {v0, v12}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z

    move-result v2

    if-nez v2, :cond_2e

    :cond_4
    const/16 v38, 0x1

    .line 738
    :goto_8
    if-eqz v34, :cond_6

    .line 739
    if-nez v10, :cond_5

    .line 740
    const/16 v39, 0x1

    .line 743
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v2, v12}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 752
    :cond_6
    :goto_9
    if-eqz v34, :cond_7

    :try_start_5
    move-object/from16 v0, v34

    invoke-interface {v0, v11}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z

    move-result v2

    if-nez v2, :cond_2f

    :cond_7
    const/16 v36, 0x1

    .line 753
    :goto_a
    if-eqz v34, :cond_9

    .line 754
    if-nez v10, :cond_8

    .line 755
    const/16 v37, 0x1

    .line 758
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v2, v11}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 815
    :cond_9
    :goto_b
    if-eqz v47, :cond_a

    :try_start_6
    invoke-interface/range {v47 .. v47}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3c

    :cond_a
    const/16 v50, 0x1

    .line 817
    :goto_c
    if-nez v50, :cond_b

    .line 820
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v47

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->setWifiEnabledPersist(ZZ)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_8

    .line 821
    const/16 v51, 0x1

    .line 830
    :cond_b
    :goto_d
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_40

    .line 832
    if-eqz v47, :cond_c

    :try_start_7
    invoke-interface/range {v47 .. v47}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3d

    :cond_c
    const/16 v48, 0x1

    .line 834
    :goto_e
    if-nez v48, :cond_d

    .line 837
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v47

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_9

    .line 838
    const/16 v49, 0x1

    .line 847
    :cond_d
    :goto_f
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-eqz v2, :cond_3f

    .line 849
    if-eqz v52, :cond_e

    :try_start_8
    invoke-interface/range {v52 .. v52}, Lcom/htc/net/wimax/IWimaxController;->getWimaxState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3e

    :cond_e
    const/16 v53, 0x1

    .line 851
    :goto_10
    if-nez v53, :cond_f

    .line 854
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-interface {v0, v2, v3}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabledPersist(ZZ)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_a

    .line 855
    const/16 v54, 0x1

    .line 872
    :cond_f
    :goto_11
    new-instance v30, Landroid/content/Intent;

    const-string v2, "com.htc.fm.servicecommand"

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 873
    .local v30, fmPauseIntent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "stop"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 880
    const/16 v31, 0x0

    .local v31, i:I
    :goto_12
    const/16 v2, 0x40

    move/from16 v0, v31

    if-ge v0, v2, :cond_16

    .line 881
    if-nez v17, :cond_10

    .line 883
    :try_start_9
    invoke-interface/range {v16 .. v16}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_b

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_41

    const/16 v17, 0x1

    .line 892
    :cond_10
    :goto_13
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 893
    if-nez v38, :cond_11

    .line 895
    :try_start_a
    move-object/from16 v0, v34

    invoke-interface {v0, v12}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_c

    move-result v2

    if-nez v2, :cond_42

    const/16 v38, 0x1

    .line 902
    :cond_11
    :goto_14
    if-nez v36, :cond_12

    .line 904
    :try_start_b
    move-object/from16 v0, v34

    invoke-interface {v0, v11}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_d

    move-result v2

    if-nez v2, :cond_43

    const/16 v36, 0x1

    .line 946
    :cond_12
    :goto_15
    if-nez v50, :cond_13

    .line 948
    :try_start_c
    invoke-interface/range {v47 .. v47}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_11

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4a

    const/16 v50, 0x1

    .line 956
    :cond_13
    :goto_16
    if-nez v48, :cond_14

    .line 958
    :try_start_d
    invoke-interface/range {v47 .. v47}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_12

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4b

    const/16 v48, 0x1

    .line 966
    :cond_14
    :goto_17
    if-nez v53, :cond_15

    .line 968
    :try_start_e
    invoke-interface/range {v52 .. v52}, Lcom/htc/net/wimax/IWimaxController;->getWimaxState()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_13

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4c

    const/16 v53, 0x1

    .line 976
    :cond_15
    :goto_18
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 977
    if-eqz v38, :cond_4e

    if-eqz v36, :cond_4e

    if-eqz v17, :cond_4e

    if-eqz v50, :cond_4e

    if-eqz v48, :cond_4e

    if-eqz v53, :cond_4e

    .line 1000
    :cond_16
    :goto_19
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1001
    const-string v2, "HtcShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioGsmOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", radioCdmaOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bluetoothOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wifiOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wifiApOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wimaxOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", IsAirplaneMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    if-eqz v38, :cond_17

    if-eqz v36, :cond_17

    if-eqz v17, :cond_17

    if-eqz v50, :cond_17

    if-eqz v48, :cond_17

    if-nez v53, :cond_18

    .line 1006
    :cond_17
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_18

    .line 1007
    const-string v2, "HtcShutdownThread"

    const-string v3, "Radio off timed out, shutdown power"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 1009
    const-string v2, "sys.shutdown.mode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    const-string v2, "sys.shutdown.hibernate.mode"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :cond_18
    :goto_1a
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-nez v2, :cond_1b

    .line 1048
    new-instance v33, Lcom/htc/app/HtcShutdownThread$7;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/app/HtcShutdownThread$7;-><init>(Lcom/htc/app/HtcShutdownThread;)V

    .line 1059
    .local v33, observer:Landroid/os/storage/IMountShutdownObserver;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    .line 1060
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x4e20

    add-long v25, v2, v6

    .line 1061
    .local v25, endShutdownTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1063
    if-eqz v32, :cond_19

    .line 1064
    :try_start_f
    invoke-interface/range {v32 .. v33}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1a

    .line 1073
    :cond_19
    :goto_1b
    :try_start_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1a

    .line 1074
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v18, v25, v6

    .line 1075
    .restart local v18       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v18, v6

    if-gtz v2, :cond_54

    .line 1085
    .end local v18           #delay:J
    :cond_1a
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1088
    .end local v25           #endShutdownTime:J
    .end local v33           #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_1b
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v15

    .line 1094
    .local v15, am:Landroid/app/IActivityManager;
    if-eqz v15, :cond_1c

    .line 1096
    :try_start_11
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_55

    .line 1097
    invoke-interface {v15}, Landroid/app/IActivityManager;->hibernate()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_15

    .line 1107
    :cond_1c
    :goto_1c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v21, v2, v6

    .line 1108
    .local v21, endAnimTime:J
    :goto_1d
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->sIsAnimationCompleted:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1d

    .line 1109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v18, v21, v2

    .line 1110
    .restart local v18       #delay:J
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-gtz v2, :cond_56

    .line 1122
    .end local v18           #delay:J
    :cond_1d
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mReboot:Z

    if-eqz v2, :cond_1e

    .line 1126
    :try_start_12
    sget-object v2, Lcom/htc/app/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_25

    .line 1142
    :cond_1e
    :goto_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1f

    .line 1143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1144
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_20

    .line 1145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1146
    :cond_20
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v35

    .line 1150
    .local v35, pm:Landroid/os/IPowerManager;
    :try_start_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    move-object/from16 v0, v35

    invoke-interface {v0, v2, v3}, Landroid/os/IPowerManager;->goToSleep(J)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_24

    .line 1157
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/HtcShutdownThread;->dismissProgressDialog()V

    .line 1159
    const-string v2, "sys.shutdown.resume.count"

    new-instance v3, Ljava/lang/Integer;

    sget v4, Lcom/htc/app/HtcShutdownThread;->mResumeCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/htc/app/HtcShutdownThread;->mResumeCount:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    const/16 v2, 0x2710

    invoke-static {v2}, Landroid/os/Power;->shutdownEFSSync_wait(I)V

    .line 1165
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/HtcShutdownThread;->dismissShutdownScreen()V

    .line 1166
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 1171
    const-string v2, "shutdown"

    invoke-static {v2}, Landroid/os/Power;->releaseWakeLock(Ljava/lang/String;)V

    .line 1172
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_21

    const-string v2, "sys.shutdown.hibernate.mode"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    :cond_21
    :try_start_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v2, v3, v4, v6}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_23

    .line 1182
    :goto_20
    const-string v2, "dev.bootreason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rtc_alarm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    .line 1185
    .local v44, rtc_alarm:Z
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1187
    if-eqz v39, :cond_22

    if-nez v44, :cond_22

    .line 1189
    const/4 v2, 0x1

    :try_start_15
    move-object/from16 v0, v34

    invoke-interface {v0, v2, v12}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_1b

    .line 1199
    :cond_22
    :goto_21
    if-eqz v37, :cond_23

    if-nez v44, :cond_23

    .line 1201
    const/4 v2, 0x1

    :try_start_16
    move-object/from16 v0, v34

    invoke-interface {v0, v2, v11}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_1c

    .line 1251
    :cond_23
    :goto_22
    if-eqz v51, :cond_24

    .line 1253
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_17
    move-object/from16 v0, v47

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->setWifiEnabledPersist(ZZ)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_1e

    .line 1263
    :cond_24
    :goto_23
    if-eqz v49, :cond_25

    .line 1265
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_18
    move-object/from16 v0, v47

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_1f

    .line 1275
    :cond_25
    :goto_24
    if-eqz v54, :cond_26

    .line 1277
    const/4 v2, 0x1

    :try_start_19
    move-object/from16 v0, v52

    invoke-interface {v0, v2}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabled(Z)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_20

    .line 1287
    :cond_26
    :goto_25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v23, v2, v6

    .line 1289
    .local v23, endRestartTime:J
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v18, v23, v2

    .line 1290
    .restart local v18       #delay:J
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-gtz v2, :cond_5a

    .line 1305
    :goto_26
    const-string v2, "sys.shutdown.nowait"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hibernate_nowait"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1307
    const-string v2, "sys.shutdown.mode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    const-string v2, "sys.shutdown.resume.date"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    const-string v2, "sys.shutdown.resume.timestamp"

    new-instance v3, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    if-eqz v15, :cond_28

    .line 1312
    invoke-interface {v15}, Landroid/app/IActivityManager;->resumeFromHibernate()V

    .line 1315
    :cond_28
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_29

    .line 1317
    :try_start_1a
    invoke-interface {v14}, Landroid/app/IAlarmManager;->stopHibernate()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_21

    .line 1322
    :cond_29
    :goto_27
    sget-object v3, Lcom/htc/app/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 1323
    const/4 v2, 0x0

    :try_start_1b
    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->sIsStarted:Z

    .line 1324
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/app/HtcShutdownThread;->mStarted:Z

    .line 1325
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/app/HtcShutdownThread;->sInstance:Lcom/htc/app/HtcShutdownThread;

    .line 1326
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 1327
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    throw v2

    .line 667
    .end local v10           #IsAirplaneMode:I
    .end local v15           #am:Landroid/app/IActivityManager;
    .end local v16           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v17           #bluetoothOff:Z
    .end local v18           #delay:J
    .end local v21           #endAnimTime:J
    .end local v23           #endRestartTime:J
    .end local v27           #endTime:J
    .end local v30           #fmPauseIntent:Landroid/content/Intent;
    .end local v31           #i:I
    .end local v32           #mount:Landroid/os/storage/IMountService;
    .end local v34           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v35           #pm:Landroid/os/IPowerManager;
    .end local v44           #rtc_alarm:Z
    .end local v45           #screenBrightness:I
    .end local v46           #screenBrightnessMode:I
    .end local v47           #wifi:Landroid/net/wifi/IWifiManager;
    .end local v52           #wimax:Lcom/htc/net/wimax/IWimaxController;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 682
    .restart local v18       #delay:J
    .restart local v27       #endTime:J
    :cond_2b
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1c} :catch_0

    goto/16 :goto_3

    .line 683
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 686
    .end local v18           #delay:J
    :catchall_1
    move-exception v2

    :try_start_1d
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    throw v2

    .line 709
    .restart local v10       #IsAirplaneMode:I
    .restart local v16       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v32       #mount:Landroid/os/storage/IMountService;
    .restart local v34       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v46       #screenBrightnessMode:I
    .restart local v47       #wifi:Landroid/net/wifi/IWifiManager;
    .restart local v52       #wimax:Lcom/htc/net/wimax/IWimaxController;
    :catch_1
    move-exception v20

    .line 710
    .local v20, e:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v45, 0x0

    .restart local v45       #screenBrightness:I
    goto/16 :goto_4

    .line 717
    .end local v20           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_2c
    const-string v2, "sys.shutdown.brightness"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 721
    :cond_2d
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 728
    :catch_2
    move-exception v29

    .line 731
    .local v29, ex:Landroid/os/RemoteException;
    const/16 v17, 0x1

    .restart local v17       #bluetoothOff:Z
    goto/16 :goto_7

    .line 737
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_2e
    const/16 v38, 0x0

    goto/16 :goto_8

    .line 745
    :catch_3
    move-exception v29

    .line 748
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v38, 0x1

    goto/16 :goto_9

    .line 752
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_2f
    const/16 v36, 0x0

    goto/16 :goto_a

    .line 760
    :catch_4
    move-exception v29

    .line 763
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v36, 0x1

    .line 764
    goto/16 :goto_b

    .line 765
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_30
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 767
    if-eqz v34, :cond_31

    :try_start_1e
    move-object/from16 v0, v34

    invoke-interface {v0, v12}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z

    move-result v2

    if-nez v2, :cond_36

    :cond_31
    const/16 v38, 0x1

    .line 768
    :goto_28
    if-eqz v34, :cond_33

    .line 769
    if-nez v10, :cond_32

    .line 770
    const/16 v39, 0x1

    .line 773
    :cond_32
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v2, v12}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_6

    .line 782
    :cond_33
    :goto_29
    if-eqz v34, :cond_34

    :try_start_1f
    move-object/from16 v0, v34

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z

    move-result v2

    if-nez v2, :cond_37

    :cond_34
    const/16 v41, 0x1

    .line 783
    :goto_2a
    if-eqz v34, :cond_9

    .line 784
    if-nez v10, :cond_35

    .line 785
    const/16 v42, 0x1

    .line 788
    :cond_35
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v2, v13}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_5

    goto/16 :goto_b

    .line 790
    :catch_5
    move-exception v29

    .line 793
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v41, 0x1

    .line 794
    goto/16 :goto_b

    .line 767
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_36
    const/16 v38, 0x0

    goto :goto_28

    .line 775
    :catch_6
    move-exception v29

    .line 778
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v38, 0x1

    goto :goto_29

    .line 782
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_37
    const/16 v41, 0x0

    goto :goto_2a

    .line 798
    :cond_38
    if-eqz v34, :cond_39

    :try_start_20
    invoke-interface/range {v34 .. v34}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_3b

    :cond_39
    const/16 v40, 0x1

    .line 799
    :goto_2b
    if-eqz v34, :cond_9

    .line 800
    if-nez v10, :cond_3a

    .line 801
    const/16 v43, 0x1

    .line 804
    :cond_3a
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_7

    goto/16 :goto_b

    .line 806
    :catch_7
    move-exception v29

    .line 809
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v40, 0x1

    .line 810
    invoke-static {}, Landroid/os/Power;->shutdownEFSSync()V

    goto/16 :goto_b

    .line 798
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_3b
    const/16 v40, 0x0

    goto :goto_2b

    .line 815
    :cond_3c
    const/16 v50, 0x0

    goto/16 :goto_c

    .line 824
    :catch_8
    move-exception v29

    .line 827
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v50, 0x1

    goto/16 :goto_d

    .line 832
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_3d
    const/16 v48, 0x0

    goto/16 :goto_e

    .line 841
    :catch_9
    move-exception v29

    .line 844
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v48, 0x1

    goto/16 :goto_f

    .line 849
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_3e
    const/16 v53, 0x0

    goto/16 :goto_10

    .line 858
    :catch_a
    move-exception v29

    .line 861
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v53, 0x1

    .line 862
    goto/16 :goto_11

    .line 865
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_3f
    const/16 v53, 0x1

    goto/16 :goto_11

    .line 868
    :cond_40
    const/16 v48, 0x1

    .line 869
    const/16 v53, 0x1

    goto/16 :goto_11

    .line 883
    .restart local v30       #fmPauseIntent:Landroid/content/Intent;
    .restart local v31       #i:I
    :cond_41
    const/16 v17, 0x0

    goto/16 :goto_13

    .line 885
    :catch_b
    move-exception v29

    .line 888
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v17, 0x1

    goto/16 :goto_13

    .line 895
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_42
    const/16 v38, 0x0

    goto/16 :goto_14

    .line 896
    :catch_c
    move-exception v29

    .line 899
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v38, 0x1

    goto/16 :goto_14

    .line 904
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_43
    const/16 v36, 0x0

    goto/16 :goto_15

    .line 905
    :catch_d
    move-exception v29

    .line 908
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v36, 0x1

    .line 909
    goto/16 :goto_15

    .line 911
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_44
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 912
    if-nez v38, :cond_45

    .line 914
    :try_start_21
    move-object/from16 v0, v34

    invoke-interface {v0, v12}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_e

    move-result v2

    if-nez v2, :cond_46

    const/16 v38, 0x1

    .line 921
    :cond_45
    :goto_2c
    if-nez v41, :cond_12

    .line 923
    :try_start_22
    move-object/from16 v0, v34

    invoke-interface {v0, v13}, Lcom/android/internal/telephony/ITelephony;->isRadioOnExt(I)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_f

    move-result v2

    if-nez v2, :cond_47

    const/16 v41, 0x1

    :goto_2d
    goto/16 :goto_15

    .line 914
    :cond_46
    const/16 v38, 0x0

    goto :goto_2c

    .line 915
    :catch_e
    move-exception v29

    .line 918
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v38, 0x1

    goto :goto_2c

    .line 923
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_47
    const/16 v41, 0x0

    goto :goto_2d

    .line 924
    :catch_f
    move-exception v29

    .line 927
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v41, 0x1

    .line 928
    goto/16 :goto_15

    .line 932
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_48
    if-nez v40, :cond_12

    .line 934
    :try_start_23
    invoke-interface/range {v34 .. v34}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_49

    const/16 v40, 0x1

    .line 935
    :goto_2e
    if-eqz v40, :cond_12

    .line 936
    invoke-static {}, Landroid/os/Power;->shutdownEFSSync()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_10

    goto/16 :goto_15

    .line 938
    :catch_10
    move-exception v29

    .line 941
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v40, 0x1

    .line 942
    invoke-static {}, Landroid/os/Power;->shutdownEFSSync()V

    goto/16 :goto_15

    .line 934
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_49
    const/16 v40, 0x0

    goto :goto_2e

    .line 948
    :cond_4a
    const/16 v50, 0x0

    goto/16 :goto_16

    .line 949
    :catch_11
    move-exception v29

    .line 952
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v50, 0x1

    goto/16 :goto_16

    .line 958
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_4b
    const/16 v48, 0x0

    goto/16 :goto_17

    .line 959
    :catch_12
    move-exception v29

    .line 962
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v48, 0x1

    goto/16 :goto_17

    .line 968
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_4c
    const/16 v53, 0x0

    goto/16 :goto_18

    .line 969
    :catch_13
    move-exception v29

    .line 972
    .restart local v29       #ex:Landroid/os/RemoteException;
    const/16 v53, 0x1

    goto/16 :goto_18

    .line 982
    .end local v29           #ex:Landroid/os/RemoteException;
    :cond_4d
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 983
    if-eqz v38, :cond_4e

    if-eqz v41, :cond_4e

    if-eqz v17, :cond_4e

    if-eqz v50, :cond_4e

    if-eqz v48, :cond_4e

    if-nez v53, :cond_16

    .line 996
    :cond_4e
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 880
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_12

    .line 990
    :cond_4f
    if-eqz v40, :cond_4e

    if-eqz v17, :cond_4e

    if-eqz v50, :cond_4e

    if-eqz v48, :cond_4e

    if-eqz v53, :cond_4e

    goto/16 :goto_19

    .line 1013
    :cond_50
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1014
    const-string v2, "HtcShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioGsmOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", radioSubGsmOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bluetoothOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wifiOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wifiApOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wimaxOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", IsAirplaneMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    if-eqz v38, :cond_51

    if-eqz v41, :cond_51

    if-eqz v17, :cond_51

    if-eqz v50, :cond_51

    if-eqz v48, :cond_51

    if-nez v53, :cond_18

    .line 1019
    :cond_51
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_18

    .line 1020
    const-string v2, "HtcShutdownThread"

    const-string v3, "Radio off timed out, shutdown power"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 1022
    const-string v2, "sys.shutdown.mode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string v2, "sys.shutdown.hibernate.mode"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 1028
    :cond_52
    const-string v2, "HtcShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bluetoothOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wifiOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wifiApOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wimaxOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", IsAirplaneMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    if-eqz v40, :cond_53

    if-eqz v17, :cond_53

    if-eqz v50, :cond_53

    if-eqz v48, :cond_53

    if-nez v53, :cond_18

    .line 1033
    :cond_53
    sget-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    if-eqz v2, :cond_18

    .line 1034
    const-string v2, "HtcShutdownThread"

    const-string v3, "Radio off timed out, shutdown power"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/app/HtcShutdownThread;->mHibernate:Z

    .line 1036
    const-string v2, "sys.shutdown.mode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v2, "sys.shutdown.hibernate.mode"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    if-nez v40, :cond_18

    .line 1040
    invoke-static {}, Landroid/os/Power;->shutdownEFSSync()V

    goto/16 :goto_1a

    .line 1081
    .restart local v18       #delay:J
    .restart local v25       #endShutdownTime:J
    .restart local v33       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_54
    :try_start_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_24} :catch_14

    goto/16 :goto_1b

    .line 1082
    :catch_14
    move-exception v2

    goto/16 :goto_1b

    .line 1085
    .end local v18           #delay:J
    :catchall_2
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    throw v2

    .line 1100
    .end local v25           #endShutdownTime:J
    .end local v33           #observer:Landroid/os/storage/IMountShutdownObserver;
    .restart local v15       #am:Landroid/app/IActivityManager;
    :cond_55
    const/16 v2, 0x2710

    :try_start_26
    invoke-interface {v15, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_15

    goto/16 :goto_1c

    .line 1101
    :catch_15
    move-exception v2

    goto/16 :goto_1c

    .line 1116
    .restart local v18       #delay:J
    .restart local v21       #endAnimTime:J
    :cond_56
    :try_start_27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_27} :catch_16

    goto/16 :goto_1d

    .line 1118
    :catch_16
    move-exception v2

    goto/16 :goto_1d

    .line 1210
    .end local v18           #delay:J
    .restart local v35       #pm:Landroid/os/IPowerManager;
    .restart local v44       #rtc_alarm:Z
    :cond_57
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1212
    if-eqz v39, :cond_58

    if-nez v44, :cond_58

    .line 1214
    const/4 v2, 0x1

    :try_start_28
    move-object/from16 v0, v34

    invoke-interface {v0, v2, v12}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_1d

    .line 1224
    :cond_58
    :goto_2f
    if-eqz v42, :cond_23

    if-nez v44, :cond_23

    .line 1226
    const/4 v2, 0x1

    :try_start_29
    move-object/from16 v0, v34

    invoke-interface {v0, v2, v13}, Lcom/android/internal/telephony/ITelephony;->setRadioExt(ZI)Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_17

    goto/16 :goto_22

    .line 1230
    :catch_17
    move-exception v2

    goto/16 :goto_22

    .line 1238
    :cond_59
    if-eqz v43, :cond_23

    if-nez v44, :cond_23

    .line 1240
    const/4 v2, 0x1

    :try_start_2a
    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_18

    goto/16 :goto_22

    .line 1244
    :catch_18
    move-exception v2

    goto/16 :goto_22

    .line 1298
    .restart local v18       #delay:J
    .restart local v23       #endRestartTime:J
    :cond_5a
    :try_start_2b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2b} :catch_22

    .line 1302
    :goto_30
    const-string v2, "init.svc.bootanim"

    const-string v3, "stopped"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "stopped"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    goto/16 :goto_26

    .line 654
    .end local v10           #IsAirplaneMode:I
    .end local v15           #am:Landroid/app/IActivityManager;
    .end local v16           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v17           #bluetoothOff:Z
    .end local v18           #delay:J
    .end local v21           #endAnimTime:J
    .end local v23           #endRestartTime:J
    .end local v27           #endTime:J
    .end local v30           #fmPauseIntent:Landroid/content/Intent;
    .end local v31           #i:I
    .end local v32           #mount:Landroid/os/storage/IMountService;
    .end local v34           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v35           #pm:Landroid/os/IPowerManager;
    .end local v44           #rtc_alarm:Z
    .end local v45           #screenBrightness:I
    .end local v46           #screenBrightnessMode:I
    .end local v47           #wifi:Landroid/net/wifi/IWifiManager;
    .end local v52           #wimax:Lcom/htc/net/wimax/IWimaxController;
    :catch_19
    move-exception v2

    goto/16 :goto_1

    .line 1069
    .restart local v10       #IsAirplaneMode:I
    .restart local v16       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v17       #bluetoothOff:Z
    .restart local v25       #endShutdownTime:J
    .restart local v27       #endTime:J
    .restart local v30       #fmPauseIntent:Landroid/content/Intent;
    .restart local v31       #i:I
    .restart local v32       #mount:Landroid/os/storage/IMountService;
    .restart local v33       #observer:Landroid/os/storage/IMountShutdownObserver;
    .restart local v34       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v45       #screenBrightness:I
    .restart local v46       #screenBrightnessMode:I
    .restart local v47       #wifi:Landroid/net/wifi/IWifiManager;
    .restart local v52       #wimax:Lcom/htc/net/wimax/IWimaxController;
    :catch_1a
    move-exception v2

    goto/16 :goto_1b

    .line 1193
    .end local v25           #endShutdownTime:J
    .end local v33           #observer:Landroid/os/storage/IMountShutdownObserver;
    .restart local v15       #am:Landroid/app/IActivityManager;
    .restart local v21       #endAnimTime:J
    .restart local v35       #pm:Landroid/os/IPowerManager;
    .restart local v44       #rtc_alarm:Z
    :catch_1b
    move-exception v2

    goto/16 :goto_21

    .line 1205
    :catch_1c
    move-exception v2

    goto/16 :goto_22

    .line 1218
    :catch_1d
    move-exception v2

    goto :goto_2f

    .line 1257
    :catch_1e
    move-exception v2

    goto/16 :goto_23

    .line 1269
    :catch_1f
    move-exception v2

    goto/16 :goto_24

    .line 1281
    :catch_20
    move-exception v2

    goto/16 :goto_25

    .line 1318
    .restart local v18       #delay:J
    .restart local v23       #endRestartTime:J
    :catch_21
    move-exception v2

    goto/16 :goto_27

    .line 1300
    :catch_22
    move-exception v2

    goto :goto_30

    .line 1177
    .end local v18           #delay:J
    .end local v23           #endRestartTime:J
    .end local v44           #rtc_alarm:Z
    :catch_23
    move-exception v2

    goto/16 :goto_20

    .line 1152
    :catch_24
    move-exception v2

    goto/16 :goto_1f

    .line 1127
    .end local v35           #pm:Landroid/os/IPowerManager;
    :catch_25
    move-exception v2

    goto/16 :goto_1e
.end method
